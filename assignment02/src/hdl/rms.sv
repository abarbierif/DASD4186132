module rms(
  input clk,
  input rst,
  input start,
  input last_sample,
  input [13:0] data_in,
  output ready
);

  logic mult_en, acc_en;

  logic [27:0] square_data_in, square_data_in_reg;
  logic [37:0] acc_square_data_in_reg;

  logic last_sample_reg0, last_sample_reg1;

  rms_fsm fsm_rms(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample_reg1),
    .mult_en(mult_en),
    .acc_en(acc_en),
    .ready(ready)
  );
  
  // datapath
  assign square_data_in = data_in * data_in; //Q4.24

  always_ff @(posedge clk) begin
    if(rst) begin
      square_data_in_reg <= 0;
      acc_square_data_in_reg  <= 0;
      last_sample_reg0 <= 0;
      last_sample_reg1 <= 0;
    end else begin
      if(mult_en) begin
        square_data_in_reg <= square_data_in; //Q4.24
      end
      if(acc_en) begin
	acc_square_data_in_reg <= acc_square_data_in_reg + square_data_in_reg; //Q14.24
      end
      last_sample_reg0 <= last_sample;
      last_sample_reg1 <= last_sample_reg0;
    end
  end
  
endmodule  
