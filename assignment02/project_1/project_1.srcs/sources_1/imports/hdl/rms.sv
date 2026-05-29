// Calcula el RMS de M muestras usando acumulación de x^2, división por M (LUT)
// y raíz cuadrada por Newton-Raphson con aproximación inicial desde norm_lut.
// last_sample se registra dos ciclos para alinearlo con la latencia del procesamiento.
module rms(
  input        clk,
  input        rst,
  input        start,
  input        last_sample,
  input [13:0] data_in,
  input [19:0] div_lut_data,  // 1/M en U0.20
  output logic [13:0] sqrt,
  output       ready
);
  logic mult_en, acc_en, div0_en, div1_en, div2_en;
  logic norm0_en, norm1_en, nr0_en, nr1_en, nr2_en, nr3_en, nr4_en;

  // last_sample retrasado 2 ciclos para alinearlo con la latencia del pipeline
  logic last_sample_reg0, last_sample_reg1;

  logic [27:0] x2;          // U4.24: data_in^2 >> 4
  logic [23:0] x2_reg;      // U4.20
  logic [33:0] acc_x2, acc_x2_reg; // U14.20: acumulación de x^2

  // división de acc_x2 por M: partida en dos mitades para evitar multiplicador ancho
  logic [36:0] div_lower, div_upper, div_lower_reg;
  logic [53:0] div_upper_reg, div_x2;
  logic [17:0] div_x2_reg;  // U4.14: x^2/M

  // normalización para aproximación inicial de Newton-Raphson
  logic [2:0] k_exp, k_exp_reg;  // exponente del leading one
  logic [5:0] lut_norm_addr;     // índice para norm_lut (6 MSBs tras leading one)
  logic [17:0] nr_xk0_raw, nr_xk0, nr_xk_next, nr_xk; // U2.16
  logic xk_sel; // 0: aproximación inicial (LUT), 1: iteración previa
  logic [17:0] nr_xk0_shifted;
  logic [35:0] nr_xk0_odd;
  logic [35:0] nr_xk0_scaled; // ajuste por paridad de k_exp

  // variables de iteración Newton-Raphson: xk+1 = xk/2 * (3 - x*xk^2)
  logic [17:0] nr_xk_2;           // xk/2, U2.16
  logic [35:0] nr_xk2;            // xk^2, U4.32
  logic [35:0] nr_xk2x;           // xk^2·x, U6.30
  logic [17:0] nr_3_xk2x;         // 3 - xk^2·x, U2.16
  logic [35:0] nr_xk_2_3_xk2x;   // xk+1 antes de truncar, U4.32
  logic [35:0] nr_sqrtx;          // √x en U6.30

  // registros de pipeline para cada etapa Newton-Raphson
  logic [17:0] nr_xk_2_reg, nr_xk2_reg, nr_xk2x_reg;
  logic [17:0] nr_3_xk2x_reg, nr_xk_2_3_xk2x_reg, nr_sqrtx_reg;

  rms_fsm fsm_rms(
    .clk(clk), .rst(rst), .start(start), .last_sample(last_sample_reg1),
    .mult_en(mult_en), .acc_en(acc_en), .div0_en(div0_en), .div1_en(div1_en),
    .xk_sel(xk_sel), .norm0_en(norm0_en), .norm1_en(norm1_en),
    .nr0_en(nr0_en), .nr1_en(nr1_en), .nr2_en(nr2_en),
    .nr3_en(nr3_en), .nr4_en(nr4_en), .ready(ready)
  );

  // datapath: cuadrado, acumulación y división
  assign x2      = (data_in * data_in) >> 4;           // U4.24
  assign acc_x2  = acc_x2_reg + x2_reg;
  // división partida: acc_x2 = acc_x2[33:17]·2^17 + acc_x2[16:0]
  assign div_lower = acc_x2_reg[16:0]  * div_lut_data;
  assign div_upper = acc_x2_reg[33:17] * div_lut_data;
  assign div_x2    = ((div_upper_reg << 17) + div_lower_reg) >> 26; // U4.14

  // normalización: leading one determina exponente y dirección en norm_lut
  priority_encoder leading_one(.data_in(div_x2_reg), .data_out(lut_norm_addr), .k_exp(k_exp));
  norm_lut lut_norm(.clk(clk), .rst(rst), .addr(lut_norm_addr), .data_out(nr_xk0_raw));

  // ajuste de aproximación inicial según paridad de k_exp
  assign nr_xk0_shifted = nr_xk0_raw >> (k_exp_reg >> 1);
  assign nr_xk0_odd     = (nr_xk0_shifted * 18'b101101010000010011) >> 18; // ×0.7071 (1/sqrt(2))
  assign nr_xk0_scaled  = k_exp[0] ? nr_xk0_odd : nr_xk0_shifted;

  // mux: primera iteración usa aproximación LUT; iteraciones siguientes usan xk anterior
  mux2 #(.WIDTH(18)) xk_mux(.in0(nr_xk0), .in1(nr_xk_2_3_xk2x_reg), .sel(xk_sel), .out(nr_xk));

  // iteración Newton-Raphson: xk+1 = (xk/2) · (3 - x·xk^2)
  assign nr_xk_2          = nr_xk >> 1;
  assign nr_xk2           = (nr_xk * nr_xk) >> 16;
  assign nr_xk2x          = (nr_xk2_reg * div_x2_reg) >> 14;
  assign nr_3_xk2x        = (18'd3 << 16) - nr_xk2x_reg;
  assign nr_xk_2_3_xk2x  = (nr_3_xk2x_reg * nr_xk_2_reg) >> 16;
  assign nr_sqrtx         = (div_x2_reg * nr_xk_2_3_xk2x_reg) >> 14;

  always_ff @(posedge clk) begin
    if(rst) begin
      x2_reg <= 0; acc_x2_reg <= 0;
      div_lower_reg <= 0; div_upper_reg <= 0; div_x2_reg <= 0;
      k_exp_reg <= 0; nr_xk0 <= 0;
      nr_xk_2_reg <= 0; nr_xk2_reg <= 0; nr_xk2x_reg <= 0;
      nr_3_xk2x_reg <= 0; nr_xk_2_3_xk2x_reg <= 0; nr_sqrtx_reg <= 0;
      last_sample_reg0 <= 0; last_sample_reg1 <= 0;
    end else begin
      if(mult_en)  x2_reg   <= x2;                // U4.20
      if(acc_en)   acc_x2_reg <= acc_x2;           // U14.20
      if(div0_en) begin
        div_lower_reg <= div_lower;
        div_upper_reg <= div_upper;
      end
      if(div1_en)  div_x2_reg <= div_x2;           // U4.14
      if(norm0_en) k_exp_reg  <= k_exp;
      if(norm1_en) nr_xk0     <= nr_xk0_scaled;
      if(nr0_en) begin
        nr_xk_2_reg <= nr_xk_2;
        nr_xk2_reg  <= nr_xk2;
      end
      if(nr1_en) nr_xk2x_reg         <= nr_xk2x;
      if(nr2_en) nr_3_xk2x_reg       <= nr_3_xk2x;
      if(nr3_en) nr_xk_2_3_xk2x_reg  <= nr_xk_2_3_xk2x;
      if(nr4_en) begin
        nr_sqrtx_reg <= nr_sqrtx;
        acc_x2_reg   <= 0; // reset acumulador tras última muestra
      end
      last_sample_reg0 <= last_sample;
      last_sample_reg1 <= last_sample_reg0;
    end
  end

  assign sqrt = nr_sqrtx_reg[17:4]; // U2.12: truncar bits fraccionarios extra

endmodule
