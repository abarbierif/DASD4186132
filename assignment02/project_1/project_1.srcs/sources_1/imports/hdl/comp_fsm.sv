module comp_fsm(
  input clk,
  input rst,
  input start,
  input last_sample,
  output comp_en,
  output ready
);

  typedef enum {IDLE, COMP} state_t;
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
          next_state = COMP;
        end
      end
      COMP: begin
        if(last_sample) begin
          next_state = IDLE;
        end
      end
    endcase
  end

  assign comp_en = (current_state == COMP);
  assign ready   = (current_state == IDLE);

endmodule
