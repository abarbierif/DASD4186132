module samples_fsm(
  input clk,
  input rst,
  input start,
  input [9:0] n_samples,
  input ad1_driver_ready_rising,
  output ready
);

  logic [10:0] current_state, next_state;

  // state register
  always_ff @(posedge clk) begin
    if(rst) current_state <= 0;
    else    current_state <= next_state;
  end

  // next state logic
  always_comb begin
    next_state = current_state;
    if(current_state >= n_samples) begin
      if(ad1_driver_ready_rising) next_state = 0;
    end else begin
      if(ad1_driver_ready_rising) next_state = current_state + 1;
    end
  end

  // output logic 
  assign ready = (current_state == 0);

endmodule 
