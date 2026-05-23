module samples_fsm(
  input clk,
  input rst,
  input start,
  input [10:0] n_samples,
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
    if(current_state == 0) begin
      if(start) begin
	next_state = 1;
      end
    end else begin
      if(current_state >= n_samples+1) begin
        next_state = 0;
      end else begin
        if(ad1_driver_ready_rising) begin
	  next_state = current_state + 1;
        end
      end
    end
  end

  // output logic 
  assign ready = (current_state == 0);

endmodule 
