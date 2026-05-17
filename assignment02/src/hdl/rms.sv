module rms(
  input clk,
  input rst,
  input start,
  input last_sample,
  input [13:0] data_in,
  input [19:0] div_lut_data,
  output ready
);

  logic mult_en, acc_en, div0_en, div1_en, div2_en;

  logic [27:0] square_data_in, square_data_in_reg;
  logic [37:0] acc_square_data_in, acc_square_data_in_reg;
  logic [38:0] div_lsb, div_msb, div_lsb_reg0, div_lsb_reg1, div_msb_reg0, div_msb_reg1;
  logic [57:0] div_msb_reg1_shifted;
  logic [57:0] div_squared_data;
  logic [33:0] div_squared_data_q14_20;

  logic last_sample_reg0, last_sample_reg1;

  rms_fsm fsm_rms(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample_reg1),
    .mult_en(mult_en),
    .acc_en(acc_en),
    .div0_en(div0_en),
    .div1_en(div1_en),
    .div2_en(div2_en),
    .ready(ready)
  );
  
  // datapath
  assign square_data_in = data_in * data_in; //Q4.24
  assign acc_square_data_in = acc_square_data_in_reg + square_data_in_reg; //Q14.24
  assign div_lsb = acc_square_data_in_reg[18:0] * div_lut_data; 
  assign div_msb = div_msb_reg0 * div_lut_data;
  assign div_msb_reg1_shifted = (div_msb_reg1 << 19);
  assign div_squared_data = div_msb_reg1_shifted + div_lsb_reg1;

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
	acc_square_data_in_reg <= acc_square_data_in; //Q14.24
      end

      if(div0_en) begin
	div_lsb_reg0 <= div_lsb;
	div_msb_reg0 <= acc_square_data_in_reg[37:19];
      end

      if(div1_en) begin
	div_lsb_reg1 <= div_lsb_reg0;
	div_msb_reg1 <= div_msb;
      end

      if(div2_en) begin
        div_squared_data_q14_20 <= div_squared_data[57:24];
      end
      
      last_sample_reg0 <= last_sample;
      last_sample_reg1 <= last_sample_reg0;
    end
  end

endmodule  
