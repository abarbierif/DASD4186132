// Contador de muestras. Estado 0 = inactivo (ready=1); estados 1..M = adquisición activa.
// Avanza un estado por cada flanco de ready del driver; vuelve a 0 al completar M muestras.
module samples_fsm(
  input        clk,
  input        rst,
  input        start,
  input [10:0] n_samples, // M = N+8
  input        ad1_driver_ready_rising,
  output       ready      // activo en estado 0: antes y después de la adquisición
);
  logic [10:0] current_state, next_state;

  always_ff @(posedge clk) begin
    if(rst) current_state <= 0;
    else    current_state <= next_state;
  end

  always_comb begin
    next_state = current_state;
    if(current_state == 0) begin
      if(start) begin
        next_state = 1; // inicia adquisición
      end
    end else begin
      if(current_state >= n_samples+1) begin
        next_state = 0; // adquisición completa
      end else begin
        if(ad1_driver_ready_rising) begin
          next_state = current_state + 1;
        end
      end
    end
  end

  assign ready = (current_state == 0);
endmodule