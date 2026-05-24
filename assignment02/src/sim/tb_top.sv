module tb_top();

  logic clk;
  logic rst;
  logic [9:0] n_samples;
  logic start;
  logic mode;
  logic [1:0] metric_sel;
  // pmod interface
  logic d0, d1;
  logic cs;
  logic sclk;
  // display interface
  logic [7:0] seg;
  logic [7:0] an;
  logic dp;

  top dut(
    .clk(clk),
    .rst(rst),
    .N(n_samples),
    .start(start),
    .mode(mode),
    .metric_sel(metric_sel),
    .d0(d0),
    .d1(d1),
    .cs(cs),
    .sclk(sclk),
    .seg(seg),
    .an(an),
    .dp(dp)
  );

  initial begin

    $dumpfile("top.vcd");
    $dumpvars();

    clk=0;
    rst=1;
    start=0;
    mode=1;
    n_samples=10'b0;
    metric_sel=2'b00;

    #50;
    rst=0;
    
    // 1: mode test, minimum samples (8), start held high for long 
    #15000;
    start=1;
    #1000000;
    start=0;

    #50;
    n_samples=10'd100; // n_samples changed during processing, what happened?
   
    // 2: mode test, 100 samples (108) 
    #25000;
    start=1;
    #50000;
    start=0;

    // 3: mode test, above the max permitted samples, 1017 (it should saturate to 1024;) 
    #25000;
    n_samples=10'd1017;
    start=1;
    #30;
    start=0;

    // 4: mode adc, minimum samples (8), start held high for long 
    #1000000;
    n_samples=10'd0;
    mode=0;
    start=1;
    #50000;
    start=0;

    #50;
    n_samples=10'd50; // n_samples changed during processing, what happened?
   
    // 5: mode adc, 50 samples (58) 
    #500000;
    start=1;
    #1000;
    start=0;

    // 6: mode adc, above the max permitted samples, 1017 (it should saturate to 1024;) 
    #200000;
    n_samples=10'd1017;
    start=1;
    #1000;
    start=0;

    // 7: checking visualization outputs
    #1000000; 
    metric_sel=2'b01;
    #25000;
    metric_sel=2'b10;
    #25000;
    metric_sel=2'b11;

    #900000 $finish;

  end


  always #5 clk = ~clk;
  always @(negedge sclk) d0 = $urandom_range(0, 1);
  always @(negedge sclk) d1 = $urandom_range(0, 1);

endmodule
