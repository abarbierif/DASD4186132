module tb_top();

  logic clk;
  logic rst;
  logic [9:0] n_samples;
  logic start;
  logic ready;
  // pmod interface
  logic d0, d1;
  logic cs;
  logic sclk;

  top dut(
    .clk(clk),
    .rst(rst),
    .n_samples(n_samples),
    .start(start),
    .ready(ready),
    .d0(d0),
    .d1(d1),
    .cs(cs),
    .sclk(sclk)
  );

  initial begin

    $dumpfile("top.vcd");
    $dumpvars();

    clk=0;
    rst=1;
    n_samples=10;
    start=0;

    #50;
    rst=0;

    #45;
    start=1;
    #10;
    start=0;

    #30000; $finish;

  end

  always #5 clk = ~clk;
  always @(negedge sclk) d0 = $urandom_range(4095, 0);
  always @(negedge sclk) d1 = $urandom_range(4095, 0);

endmodule
