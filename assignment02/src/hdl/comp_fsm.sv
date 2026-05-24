module comp_fsm(
  input clk,
  input rst,
  input start,
  input last_sample,
  output comp_en,
  output ready
);

  typedef enum {IDLE, COMP, COMP_READY, COMP_LAST} state_t;
  state_t current_state, next_state;

  logic last_sample_reg;

  always_ff @(posedge clk) begin
    last_sample_reg <= last_sample;
  end

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
        if(last_sample_reg) begin
          next_state = COMP_LAST;
        end else begin
          next_state = COMP_READY;
        end
      end
      COMP_READY: begin
        next_state = COMP;
      end
      COMP_LAST: begin
        next_state = IDLE;
      end
    endcase
  end

  assign comp_en = (current_state == COMP) || (current_state == COMP_READY) || (current_state == COMP_LAST);
  assign ready   = (current_state == IDLE) || (current_state == COMP_READY);

endmodule
