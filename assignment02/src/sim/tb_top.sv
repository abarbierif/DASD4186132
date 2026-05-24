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
    metric_sel=2'b00;

    #50;
    rst=0;
    n_samples=10'b0;
    
    #15000;
    start=1;
    #1000000;
    start=0;

    #50;
    n_samples=10'd10;
    
    #15000;
    mode=0;
    start=1;
    #30;
    start=0;

    #15000;
    start=1;
    #30;
    start=0;

    #15000; 
    start=1;
    #30;
    start=0;

    #15000;
    n_samples=10'd50;

    #15000;
    start=1;
    #30;
    start=0;
   
    #25000;
    n_samples=0;

    #15000;
    start=1;
    #30;
    start=0;
    
    #15000;
    n_samples=10'd1017;

    #15000;
    start=1;
    #30;
    start=0;
    
    #950000; 
    mode=1;
    n_samples=10'd100;

    #15000;
    start=1;
    #30;
    start=0;
    
    #200000; 
    n_samples=10'd1019;

    #15000;
    start=1;
    #500000
    start=0;

    #500000; 
    n_samples=10'd0;
    start=1;
    #30;
    start=0;

    #100000; 
    metric_sel=2'b01;
    #100;
    metric_sel=2'b10;
    #100;
    metric_sel=2'b11;

    #10000 $finish;

  end


  always #5 clk = ~clk;
  always @(negedge sclk) d0 = $urandom_range(0, 1);
  always @(negedge sclk) d1 = $urandom_range(0, 1);

endmodule
