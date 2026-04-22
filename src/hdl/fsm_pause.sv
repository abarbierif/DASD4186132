module fsm_pause(
  input clk,
  input pause_in,
  output pause_out
);

  typedef enum {RUNNING, STOP} state_t;
  state_t current_state, next_state;

  // registro de estado
  always_ff @(posedge clk) current_state <= next_state;

  // RUNNING->STOP y STOP->RUNNING en cada pulso de pause_in
  always_comb begin
    next_state = current_state;
    case(current_state)
      RUNNING: if(pause_in) next_state = STOP;
      STOP: if(pause_in)    next_state = RUNNING;
    endcase
  end
 
  // salida activa en STOP
  assign pause_out = (current_state == STOP); 

endmodule