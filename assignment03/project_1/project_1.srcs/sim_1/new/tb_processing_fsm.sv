`timescale 1ns / 1ps

module tb_processing_fsm();

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
  logic done;
  logic [31:0] matches_count;
  integer i, j;

  processing_fsm_sv dut(
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

    s_axis_tdata1  = 32'hAAAAAAAA; s_axis_tkeep1  = 4'h0; s_axis_tvalid1 = 0; s_axis_tlast1  = 0;
    s_axis_tdata2  = 32'hAAAAAAAA; s_axis_tkeep2  = 4'h0; s_axis_tvalid2 = 0; s_axis_tlast2  = 0;
    m_axis_tready  = 1;

    // 1: one kmer (match)
    #96;
    reset=0;
    for(j=0; j<=32'd7; j=j+1) begin
      wait(dut.s_axis_tready1 && dut.s_axis_tready2);
      @(negedge clk);
      s_axis_tdata1  = 32'hBBBBBBBB; s_axis_tkeep1  = 4'hf; s_axis_tvalid1 = 1; s_axis_tlast1  = 0;
      s_axis_tdata2  = 32'hBBBBBBBB; s_axis_tkeep2  = 4'hf; s_axis_tvalid2 = 1; s_axis_tlast2  = 0;
      @(negedge clk);
      s_axis_tkeep1  = 4'h0; s_axis_tvalid1 = 0;  
      s_axis_tkeep2  = 4'h0; s_axis_tvalid2 = 0;
    end
    
    
    // 2: 32 kmer (match), when the number of arrived kmers reach 32 it should trigger the first master transaction
    for(i=0; i<=32'd31; i=i+1) begin
      for(j=0; j<=32'd7; j=j+1) begin
        wait(dut.s_axis_tready1 && dut.s_axis_tready2);
        @(negedge clk);
        s_axis_tdata1  = 32'hAAAAAAAA; s_axis_tkeep1  = 4'hf; s_axis_tvalid1 = 1; s_axis_tlast1  = 0;
        s_axis_tdata2  = 32'hAAAAAAAA; s_axis_tkeep2  = 4'hf; s_axis_tvalid2 = 1; s_axis_tlast2  = 0;
        @(negedge clk);
        s_axis_tkeep1  = 4'h0; s_axis_tvalid1 = 0;  
        s_axis_tkeep2  = 4'h0; s_axis_tvalid2 = 0;
      end
    end

    // 3: more kmers and last, the idea is to test master transaction is triggered even if the output data stream is not complete with 32 kmers but last arrived
    //    the output stream should be: 1011111111000000001
    for(i=0; i<=32'd7; i=i+1) begin
      for(j=0; j<=32'd7; j=j+1) begin
        wait(dut.s_axis_tready1 && dut.s_axis_tready2);
        @(negedge clk);
        s_axis_tdata1  = 32'hAABBCCDD; s_axis_tkeep1  = 4'hf; s_axis_tvalid1 = 1; s_axis_tlast1  = 0;
        s_axis_tdata2  = 32'hEEEEEEEE; s_axis_tkeep2  = 4'hf; s_axis_tvalid2 = 1; s_axis_tlast2  = 0;
        @(negedge clk);
        s_axis_tkeep1  = 4'h0; s_axis_tvalid1 = 0;  
        s_axis_tkeep2  = 4'h0; s_axis_tvalid2 = 0;
      end
    end
    
    for(i=0; i<=32'd7; i=i+1) begin
      for(j=0; j<=32'd7; j=j+1) begin
        wait(dut.s_axis_tready1 && dut.s_axis_tready2);
        @(negedge clk);
        s_axis_tdata1  = 32'hAAAAAAAA; s_axis_tkeep1  = 4'hf; s_axis_tvalid1 = 1; s_axis_tlast1  = 0;
        s_axis_tdata2  = 32'hAAAAAAAA; s_axis_tkeep2  = 4'hf; s_axis_tvalid2 = 1; s_axis_tlast2  = 0;
        @(negedge clk);
        s_axis_tkeep1  = 4'h0; s_axis_tvalid1 = 0;  
        s_axis_tkeep2  = 4'h0; s_axis_tvalid2 = 0;
      end
    end
    
    for(j=0; j<=32'd7; j=j+1) begin
      wait(dut.s_axis_tready1 && dut.s_axis_tready2);
      @(negedge clk);
      s_axis_tdata1  = 32'hAABBCCDD; s_axis_tkeep1  = 4'hf; s_axis_tvalid1 = 1; s_axis_tlast1  = 0;
      s_axis_tdata2  = 32'hEEEEEEEE; s_axis_tkeep2  = 4'hf; s_axis_tvalid2 = 1; s_axis_tlast2  = 0;
      @(negedge clk);
      s_axis_tkeep1  = 4'h0; s_axis_tvalid1 = 0;  
      s_axis_tkeep2  = 4'h0; s_axis_tvalid2 = 0;
    end
    
    for(j=0; j<=32'd6; j=j+1) begin
      wait(dut.s_axis_tready1 && dut.s_axis_tready2);
      @(negedge clk);
      s_axis_tdata1  = 32'hAAAAAAAA; s_axis_tkeep1  = 4'hf; s_axis_tvalid1 = 1; s_axis_tlast1  = 0;
      s_axis_tdata2  = 32'hAAAAAAAA; s_axis_tkeep2  = 4'hf; s_axis_tvalid2 = 1; s_axis_tlast2  = 0;
      @(negedge clk);
      s_axis_tkeep1  = 4'h0; s_axis_tvalid1 = 0;  
      s_axis_tkeep2  = 4'h0; s_axis_tvalid2 = 0;
    end
    
    s_axis_tdata1  = 32'hAAAAAAAA; s_axis_tkeep1  = 4'hf; s_axis_tvalid1 = 1; s_axis_tlast1  = 0;
    s_axis_tdata2  = 32'hAAAAAAAA; s_axis_tkeep2  = 4'hf; s_axis_tvalid2 = 1; s_axis_tlast2  = 1;
    
    
    // 4: just more transactions
    #500;
    reset = 1;
    #500;
    reset = 0;
    
    /*
    for(i=0; i<=32'd7; i=i+1) begin
      for(j=0; j<=32'd7; j=j+1) begin
        wait(dut.s_axis_tready1 && dut.s_axis_tready2);
        @(negedge clk);
        s_axis_tdata1  = $urandom(); s_axis_tkeep1  = 4'hf; s_axis_tvalid1 = 1; s_axis_tlast1  = 0;
        s_axis_tdata2  = $urandom(); s_axis_tkeep2  = 4'hf; s_axis_tvalid2 = 1; s_axis_tlast2  = 0;
        @(negedge clk);
        s_axis_tkeep1  = 4'h0; s_axis_tvalid1 = 0;  
        s_axis_tkeep2  = 4'h0; s_axis_tvalid2 = 0;
      end
    end

    for(j=0; j<=32'd6; j=j+1) begin
      wait(dut.s_axis_tready1 && dut.s_axis_tready2);
      @(negedge clk);
      s_axis_tdata1  = 32'hAAAAAAAA; s_axis_tkeep1  = 4'hf; s_axis_tvalid1 = 1; s_axis_tlast1  = 0;
      s_axis_tdata2  = 32'hAAAAAAAA; s_axis_tkeep2  = 4'hf; s_axis_tvalid2 = 1; s_axis_tlast2  = 0;
      @(negedge clk);
      s_axis_tkeep1  = 4'h0; s_axis_tvalid1 = 0;  
      s_axis_tkeep2  = 4'h0; s_axis_tvalid2 = 0;
    end
    
    s_axis_tdata1  = 32'hAAAAAAAA; s_axis_tkeep1  = 4'hf; s_axis_tvalid1 = 1; s_axis_tlast1  = 0;
    s_axis_tdata2  = 32'hAAAAAAAA; s_axis_tkeep2  = 4'hf; s_axis_tvalid2 = 1; s_axis_tlast2  = 1;
    */

    #100; $finish;
  end

  always #4 clk = ~clk;

endmodule
