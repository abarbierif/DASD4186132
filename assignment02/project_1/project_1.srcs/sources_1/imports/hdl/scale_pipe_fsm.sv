// FSM de pipeline de escalado. Introduce STAGES ciclos de latencia tras
// ad1_driver_ready_rising para absorber el pipeline de la multiplicación.
// scale_pipe_fsm_ready_rising en acquisition_thread señaliza start_processing.
module scale_pipe_fsm(
  input  clk,
  input  rst,
  input  ad1_driver_ready_rising,
  output ready
);
  logic [1:0] current_state, next_state;
  localparam STAGES = 1; // latencia del pipeline; ajustar si se añaden etapas

  always_ff @(posedge clk) begin
    if(rst) current_state <= 0;
    else    current_state <= next_state;
  end

  always_comb begin
    next_state = current_state;
    if(current_state >= STAGES) begin
      next_state = 0;
    end else if(current_state >= 1) begin
      next_state = next_state + 1;
    end else begin
      if(ad1_driver_ready_rising) begin
        next_state = 1;
      end
    end
  end

  assign ready = (current_state == 0);
endmodule