// Wrapper del driver AD1 provisto. Genera el reloj dividido requerido
// por el driver mediante clockDivider con TC=5.
module ad1_thread(
  input        clk,
  input        rst,
  input        start,
  output       ready,
  output [11:0] data0, data1,
  input        d0, d1,
  output       cs,
  output       sclk
);

  logic ad1_driver_divclk;
  
  clockDivider #(.TC(5)) cd1(.clk(clk), .divClk(ad1_driver_divclk));
  
  AD1_drv ad1_driver_inst(
    .start(start), .reset(rst), .clk(clk), .divClk(ad1_driver_divclk),
    .ready(ready), .data0(data0), .data1(data1),
    .D0(d0), .D1(d1), .CS(cs), .SCLK(sclk)
  );
  
endmodule
