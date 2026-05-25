module ad1_thread(
  input clk,
  input rst,
  input start,
  output ready,
  output [11:0] data0,
  output [11:0] data1,
  // pmod interface
  input d0,
  input d1,
  output cs,
  output sclk
);

  logic ad1_driver_divclk;
  
  clockDivider #(.TC(5)) cd1(
    .clk(clk),
    .divClk(ad1_driver_divclk)
  );
  
  /*
  clk_divider #(.COUNTER_WIDTH(2), .PERIOD(2)) ad1_driver_clk(
    .clk(clk),
    .rst(rst),
    .divclk(ad1_driver_divclk)
  );
  */

  AD1_drv ad1_driver_inst(
    .start(start),
    .reset(rst),
    .clk(clk),
    .divClk(ad1_driver_divclk),
    .ready(ready),
    .data0(data0),
    .data1(data1),
    .D0(d0),
    .D1(d1),
    .CS(cs),
    .SCLK(sclk)
  );

  /*
  ad1_driver ad1_driver_inst(
    .clk(clk),
    .rst(rst),
    .divclk(ad1_driver_divclk),
    .start(start),
    .ready(ready),
    .data0(data0),
    .data1(data1),
    .d0(d0),
    .d1(d1),
    .cs(cs),
    .sclk(sclk)
  );
  */

endmodule
