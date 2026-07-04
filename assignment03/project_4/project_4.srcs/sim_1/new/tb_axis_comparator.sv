module tb_axis_comparator();

  logic clk;
  logic reset;
  logic [31:0] s_axis_tdata1;
  logic [3:0] s_axis_tkeep1;
  logic s_axis_tlast1;
  logic s_axis_tready1;
  logic s_axis_tvalid1;
  logic [31:0] s_axis_tdata2;
  logic [3:0] s_axis_tkeep2;
  logic s_axis_tlast2;
  logic s_axis_tready2;
  logic s_axis_tvalid2;
  logic [31:0] m_axis_tdata;
  logic [3:0] m_axis_tkeep;
  logic m_axis_tlast;
  logic m_axis_tready;
  logic m_axis_tvalid;
  logic [31:0] done;
  logic [31:0] matches_count;
  integer j;

  axis_comparator_sv dut(
    .clk(clk),
    .reset(!reset),
    .s_axis_tdata1(s_axis_tdata1),
    .s_axis_tkeep1(s_axis_tkeep1),
    .s_axis_tlast1(s_axis_tlast1),
    .s_axis_tready1(s_axis_tready1),
    .s_axis_tvalid1(s_axis_tvalid1),
    .s_axis_tdata2(s_axis_tdata2),
    .s_axis_tkeep2(s_axis_tkeep2),
    .s_axis_tlast2(s_axis_tlast2),
    .s_axis_tready2(s_axis_tready2),
    .s_axis_tvalid2(s_axis_tvalid2),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tready(m_axis_tready),
    .m_axis_tvalid(m_axis_tvalid),
    .done(done),
    .matches_count(matches_count)
  );

  initial begin

    //$dumpfile("processing_fsm.vcd");
    //$dumpvars();
    
    // initial values
    clk=0;
    reset=1;

    s_axis_tdata1 = $urandom(); s_axis_tkeep1 = 4'h0; s_axis_tvalid1 = 0; s_axis_tlast1 = 0;
    s_axis_tdata2 = $urandom(); s_axis_tkeep2 = 4'h0; s_axis_tvalid2 = 0; s_axis_tlast2 = 0;

    #500; reset=0;
    
    #500;
    for(j=0; j<=32'd8; j=j+1) begin
      #100;
      m_axis_tready = 0;
      wait(dut.s_axis_tready1 && dut.s_axis_tready2);
      @(negedge clk);
      s_axis_tdata1 = $urandom(); s_axis_tkeep1 = 4'hf; s_axis_tvalid1 = 1; s_axis_tlast1 = 0;
      s_axis_tdata2 = $urandom(); s_axis_tkeep2 = 4'hf; s_axis_tvalid2 = 1; s_axis_tlast2 = 0;
      @(negedge clk);
      s_axis_tkeep1 = 4'h0; s_axis_tvalid1 = 0;  
      s_axis_tkeep2 = 4'h0; s_axis_tvalid2 = 0;
      #100;
      m_axis_tready = 1;
    end
    
    #100;
    m_axis_tready = 0;
    wait(dut.s_axis_tready1 && dut.s_axis_tready2);
    @(negedge clk);
    s_axis_tdata1 = $urandom(); s_axis_tkeep1 = 4'hf; s_axis_tvalid1 = 1; s_axis_tlast1 = 0;
    s_axis_tdata2 = $urandom(); s_axis_tkeep2 = 4'hf; s_axis_tvalid2 = 1; s_axis_tlast2 = 1;
    @(negedge clk);
    s_axis_tkeep1 = 4'h0; s_axis_tvalid1 = 0;  
    s_axis_tkeep2 = 4'h0; s_axis_tvalid2 = 0;
    #100;
    m_axis_tready = 1;


    #1000; $finish;
  end

  always #4 clk = ~clk;

endmodule
