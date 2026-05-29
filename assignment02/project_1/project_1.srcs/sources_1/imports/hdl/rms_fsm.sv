// FSM de control de rms. Secuencia: acumulación de x^2 por muestra ->
// división por M (2 ciclos) -> normalización (2 ciclos) ->
// Newton-Raphson (NR_ITER=5 iteraciones de 4 ciclos cada una) -> resultado.
module rms_fsm(
  input  clk,
  input  rst,
  input  start,
  input  last_sample,
  output mult_en, acc_en,
  output div0_en, div1_en,
  output xk_sel,             // 0: aproximación inicial LUT, 1: iteración previa
  output norm0_en, norm1_en,
  output nr0_en, nr1_en, nr2_en, nr3_en, nr4_en,
  output ready
);
  typedef enum {IDLE, MULT, ACC, DIV0, DIV1, NORM0, NORM1, NR0, NR1, NR2, NR3, NR4} state_t;
  state_t current_state, next_state;

  localparam NR_ITER = 5; // número de iteraciones Newton-Raphson
  logic [2:0] nr_counter;
  logic       nr_ready;   // activo al completar NR_ITER iteraciones

  always_ff @(posedge clk) begin
    if(rst) current_state <= IDLE;
    else    current_state <= next_state;
  end

  always_comb begin
    next_state = current_state;
    case(current_state)
      IDLE:  if(start)      next_state = MULT;
      MULT:                 next_state = ACC;
      ACC:   if(last_sample) next_state = DIV0;
             else            next_state = IDLE;
      DIV0:                 next_state = DIV1;
      DIV1:                 next_state = NORM0;
      NORM0:                next_state = NORM1;
      NORM1:                next_state = NR0;
      NR0:                  next_state = NR1;
      NR1:                  next_state = NR2;
      NR2:                  next_state = NR3;
      NR3:  if(nr_ready)    next_state = NR4;
            else             next_state = NR0;
      NR4:                  next_state = IDLE;
    endcase
  end

  // contador de iteraciones Newton-Raphson; se incrementa en NR2
  always_ff @(posedge clk) begin
    if(rst) begin
      nr_counter <= 0;
    end else begin
      if(nr_counter >= NR_ITER) begin
        nr_counter <= 0;
      end else begin
        if(current_state == NR2) begin
          nr_counter <= nr_counter + 1;
        end
      end
    end
  end

  assign nr_ready  = (nr_counter >= NR_ITER);
  assign mult_en   = (current_state == MULT);
  assign acc_en    = (current_state == ACC);
  assign ready     = (current_state == IDLE);
  assign div0_en   = (current_state == DIV0);
  assign div1_en   = (current_state == DIV1);
  // xk_sel=0 solo en la primera iteración (nr_counter==0, estado NR0)
  assign xk_sel    = !((current_state == NR0) && (nr_counter == 0));
  assign norm0_en  = (current_state == NORM0);
  assign norm1_en  = (current_state == NORM1);
  assign nr0_en    = (current_state == NR0);
  assign nr1_en    = (current_state == NR1);
  assign nr2_en    = (current_state == NR2);
  assign nr3_en    = (current_state == NR3);
  assign nr4_en    = (current_state == NR4);
endmodule