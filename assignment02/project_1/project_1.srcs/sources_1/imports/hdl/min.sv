// Calcula el mínimo de M muestras. min_reg se inicializa en 0x3FFF al inicio
// de cada adquisición y se actualiza si data_in < min_reg.
module min(
  input        clk,
  input        rst,
  input        start,
  input        last_sample,
  input [13:0] data_in,
  output [13:0] min,
  output        ready
);
  logic [13:0] min_reg;
  logic        comp_en, comp_ready;

  comp_fsm min_fsm(
    .clk(clk), .rst(rst), .start(start), .last_sample(last_sample),
    .comp_en(comp_en), .ready(comp_ready)
  );

  always_ff @(posedge clk) begin
    if(rst) begin
      min_reg <= {14{1'b1}};
    end else begin
      if(start & !comp_en) min_reg <= {14{1'b1}}; // reset a valor máximo
      if(comp_en) begin
        if(data_in < min_reg) min_reg <= data_in;
      end
    end
  end

  assign min   = min_reg;
  assign ready = comp_ready;
endmodule