module rms(
  input clk,
  input rst,
  input start,
  input last_sample,
  input [13:0] data_in,
  input [19:0] div_lut_data, //Q0.20
  output logic [13:0] sqrt,
  output ready
);

  logic mult_en, acc_en, div0_en, div1_en, div2_en;
  logic norm0_en, norm1_en, nr0_en, nr1_en, nr2_en, nr3_en, nr4_en;
  logic last_sample_reg0, last_sample_reg1;

  logic [27:0] x2; //Q2.12 * Q2.12 = Q4.24
  logic [23:0] x2_reg; //Q4.20
  logic [33:0] acc_x2, acc_x2_reg; //Q4.20 + Q14.20

  logic [36:0] div_lower, div_upper, div_lower_reg;
  logic [53:0] div_upper_reg, div_x2;
  logic [17:0] div_x2_reg; //Q4.14

  logic [2:0] k_exp, k_exp_reg;
  logic [5:0] lut_norm_addr;
  logic [17:0] nr_xk0_raw, nr_xk0, nr_xk_next, nr_xk;
  logic xk_sel;
  logic [17:0] nr_xk0_shifted;
  logic [35:0] nr_xk0_odd;
  logic [35:0] nr_xk0_scaled;
  
  logic [17:0] nr_xk_2;
  logic [35:0] nr_xk2;
  logic [35:0] nr_xk2x;
  logic [17:0] nr_3_xk2x;
  logic [35:0] nr_xk_2_3_xk2x;
  logic [35:0] nr_sqrtx;

  logic [17:0] nr_xk_2_reg;
  logic [17:0] nr_xk2_reg;
  logic [17:0] nr_xk2x_reg;
  logic [17:0] nr_3_xk2x_reg;
  logic [17:0] nr_xk_2_3_xk2x_reg;
  logic [17:0] nr_sqrtx_reg;

  rms_fsm fsm_rms(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample_reg1),
    .mult_en(mult_en),
    .acc_en(acc_en),
    .div0_en(div0_en),
    .div1_en(div1_en),
    .xk_sel(xk_sel),
    .norm0_en(norm0_en),
    .norm1_en(norm1_en),
    .nr0_en(nr0_en),
    .nr1_en(nr1_en),
    .nr2_en(nr2_en),
    .nr3_en(nr3_en),
    .nr4_en(nr4_en),
    .ready(ready)
  );

  // datapath
  assign x2 = (data_in * data_in) >> 4;
  assign acc_x2 = acc_x2_reg + x2_reg;
  assign div_lower = acc_x2_reg[16:0] * div_lut_data;
  assign div_upper = acc_x2_reg[33:17] * div_lut_data;
  assign div_x2 = ((div_upper_reg << 17) + div_lower_reg) >> 26;
  
  // leading one
  priority_encoder leading_one(
    .data_in(div_x2_reg),
    .data_out(lut_norm_addr),
    .k_exp(k_exp)
  );
  
  norm_lut lut_norm(
    .clk(clk),
    .rst(rst),
    .addr(lut_norm_addr),
    .data_out(nr_xk0_raw) //Q2.16 - 18-bits
  );

  assign nr_xk0_shifted = nr_xk0_raw >> (k_exp_reg >> 1); 
  assign nr_xk0_odd = (nr_xk0_shifted * 18'b101101010000010011) >> 18; // 0.7071 in Q0.18
  assign nr_xk0_scaled = k_exp[0] ? nr_xk0_odd : nr_xk0_shifted;

  mux2 #(.WIDTH(18)) xk_mux(
    .in0(nr_xk0),
    .in1(nr_xk_2_3_xk2x_reg),
    .sel(xk_sel),
    .out(nr_xk)
  );

  
assign nr_xk_2 = nr_xk >> 1; //Q2.16
  assign nr_xk2 = (nr_xk * nr_xk) >> 16; //Q2.16 * Q2.16 = Q4.32
  assign nr_xk2x = (nr_xk2_reg * div_x2_reg) >> 14; //Q2.16 * Q4.14 = Q6.30
  assign nr_3_xk2x = (18'd3 << 16) - nr_xk2x_reg; //Q2.16
  assign nr_xk_2_3_xk2x = (nr_3_xk2x_reg * nr_xk_2_reg) >> 16; //Q2.16 * Q2.16 = Q4.32

  assign nr_sqrtx = (div_x2_reg * nr_xk_2_3_xk2x_reg) >> 14; //Q2.16 * Q4.14 = 6.30

  always_ff @(posedge clk) begin
    if(rst) begin
      x2_reg <= 0;
      acc_x2_reg <= 0;
      div_lower_reg <= 0;
      div_upper_reg <= 0;
      div_x2_reg <= 0;
      k_exp_reg <= 0;
      nr_xk0 <= 0;
      nr_xk_2_reg <= 0;
      nr_xk2_reg <= 0;
      nr_xk2x_reg <= 0;
      nr_3_xk2x_reg <= 0;
      nr_xk_2_3_xk2x_reg <= 0;
      nr_sqrtx_reg <= 0;
      last_sample_reg0 <= 0;
      last_sample_reg1 <= 0;
    end else begin
      if(mult_en) begin
        x2_reg <= x2; //Q4.20
      end
      
      if(acc_en) begin
	      acc_x2_reg <= acc_x2; //Q14.20
      end

      if(div0_en) begin
	      div_lower_reg <= div_lower;
	      div_upper_reg <= div_upper;
      end

      if(div1_en) begin
        div_x2_reg <= div_x2; //Q4.14
      end
      
      if(norm0_en) begin
        k_exp_reg <= k_exp;
      end

      if(norm1_en) begin
        nr_xk0 <= nr_xk0_scaled; 
      end

      if(nr0_en) begin
        nr_xk_2_reg <= nr_xk_2; 
        nr_xk2_reg  <= nr_xk2; 
      end
 
      if(nr1_en) begin
        nr_xk2x_reg <= nr_xk2x;
      end

      if(nr2_en) begin
        nr_3_xk2x_reg <= nr_3_xk2x; 
      end

      if(nr3_en) begin
        nr_xk_2_3_xk2x_reg <= nr_xk_2_3_xk2x;
      end

      if(nr4_en) begin
        // write result and reset accumulator
        nr_sqrtx_reg <= nr_sqrtx;
        acc_x2_reg   <= 0;
      end
         
      last_sample_reg0 <= last_sample;
      last_sample_reg1 <= last_sample_reg0;
    end
  end

  assign sqrt = nr_sqrtx_reg[17:4]; //Q2.12

endmodule  
