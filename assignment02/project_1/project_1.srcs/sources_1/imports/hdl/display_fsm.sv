module display_fsm(
  input clk,
  input rst,
  input metrics_ready,
  input start_acquisition,
  output display
);

  typedef enum {IDLE, DISPLAY} state_t;
  state_t current_state, next_state;

  always @(posedge clk) begin
    if(rst) current_state <= IDLE;
    else    current_state <= next_state;
  end

  always_comb begin
    next_state = current_state;
    case(current_state)
      IDLE: begin
        if(metrics_ready) begin
          next_state = DISPLAY;
        end
      end
      DISPLAY: begin
        if(start_acquisition) begin
          next_state = IDLE;
        end
      end
    endcase
  end

  assign display = (current_state == DISPLAY);

endmodule
