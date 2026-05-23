module max(
  input clk,
  input rst,
  input start,
  input last_sample,
  input [13:0] data_in,
  output [13:0] max,
  output ready
);
  
  logic [13:0] max_reg;
  logic comp_en, comp_ready;

  comp_fsm max_fsm(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample),
    .comp_en(comp_en),
    .ready(comp_ready)
  );
 
  always_ff @(posedge clk) begin
    if(rst) begin
      max_reg <= 0;
    end else begin
      if(start & !comp_en) begin
        max_reg <= 0;
      end
      if(comp_en) begin
        if(data_in > max_reg) begin
          max_reg <= data_in;
        end
      end
    end
  end

  assign max = max_reg;
  assign ready = comp_ready;

endmodule
