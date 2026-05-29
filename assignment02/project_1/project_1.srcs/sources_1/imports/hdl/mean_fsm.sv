// FSM de control de mean. Acumula una muestra por pulso de start;
// al recibir last_sample ejecuta la división y vuelve a IDLE.
module mean_fsm(
  input  clk,
  input  rst,
  input  start,
  input  last_sample,
  output acc_en,
  output div_en,
  output ready
);
  typedef enum {IDLE, ACC, DIV} state_t;
  state_t current_state, next_state;

  always_ff @(posedge clk) begin
    if(rst) current_state <= IDLE;
    else    current_state <= next_state;
  end

  always_comb begin
    next_state = current_state;
    case(current_state)
      IDLE: begin
        if(start) begin
          next_state = ACC;
        end
      end
      ACC: begin
        if(last_sample) begin
          next_state = DIV;
        end else begin
          next_state = IDLE;
        end
      end
      DIV: begin
        next_state = IDLE;
      end
    endcase
  end

  assign acc_en = (current_state == ACC);
  assign div_en = (current_state == DIV);
  assign ready  = (current_state == IDLE);
endmodule

