module mean(
  input clk,
  input rst,
  input start,
  input last_sample,
  input [13:0] data_in,
  input [19:0] div_lut_data,
  output logic [13:0] mean,
  output ready
);

  logic acc_en;
  logic [21:0] acc_data_in;
  logic [21:0] acc_data_in_reg;
  logic last_sample_reg;
  logic [41:0]  div_data;
  logic [13:0] div_data_reg;

  mean_fsm fsm_mean(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample_reg),
    .acc_en(acc_en),
    .div_en(div_en),
    .ready(ready)
  );

  assign acc_data_in = acc_data_in_reg + (data_in >> 2); //Q12.10 + Q2.12 = Q12.10
  assign div_data = (acc_data_in_reg * div_lut_data) >> 18; //Q12.10 * Q0.20 = Q12.30

  always_ff @(posedge clk) begin
    if(rst) begin
      acc_data_in_reg <= 0;
      div_data_reg <= 0;
      last_sample_reg <= 0;
    end else begin
      if(acc_en) begin
        acc_data_in_reg <= acc_data_in;
      end
      if(div_en) begin
        div_data_reg <= div_data; //Q2.12
        acc_data_in_reg <= 0;
      end

      last_sample_reg <= last_sample;
    end
  end

  assign mean = div_data_reg;

endmodule
