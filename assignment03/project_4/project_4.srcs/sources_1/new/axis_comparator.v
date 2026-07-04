`timescale 1ns / 1ps

module axis_comparator(
  input clk,
  input reset,
  input [31:0] s_axis1_tdata,
  input [3:0] s_axis1_tkeep,
  input s_axis1_tlast,
  output wire s_axis1_tready,
  input s_axis1_tvalid,
  input [31:0] s_axis2_tdata,
  input [3:0] s_axis2_tkeep,
  input s_axis2_tlast,
  output wire s_axis2_tready,
  input s_axis2_tvalid,
  output wire [31:0] m_axis_tdata,
  output wire [3:0] m_axis_tkeep,
  output wire m_axis_tlast,
  input m_axis_tready,
  output wire m_axis_tvalid,
  output wire [31:0] done,
  output wire [31:0] matches_count
);


  axis_comparator_sv axis_comparator_sv_inst(
    .clk(clk),
    .reset(reset),
    .s_axis_tdata1(s_axis1_tdata),
    .s_axis_tkeep1(s_axis1_tkeep),
    .s_axis_tlast1(s_axis1_tlast),
    .s_axis_tready1(s_axis1_tready),
    .s_axis_tvalid1(s_axis1_tvalid),
    .s_axis_tdata2(s_axis2_tdata),
    .s_axis_tkeep2(s_axis2_tkeep),
    .s_axis_tlast2(s_axis2_tlast),
    .s_axis_tready2(s_axis2_tready),
    .s_axis_tvalid2(s_axis2_tvalid),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tkeep(m_axis_tkeep),
    .m_axis_tlast(m_axis_tlast),
    .m_axis_tready(m_axis_tready),
    .m_axis_tvalid(m_axis_tvalid),
    .done(done),
    .matches_count(matches_count)
  );
    
endmodule
