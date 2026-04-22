module bcd27seg_1digit(
  input [3:0] bcd_in,
  output [6:0] seg_out
);
  
  logic sega, segb, segc, segd, sege, segf, segg;
  assign seg_out = {segg, segf, sege, segd, segc, segb, sega};
  
  // expresiones minimizadas por Karnaugh para cada segmento
  assign sega = bcd_in[3] | bcd_in[1] | (bcd_in[2]&bcd_in[0]) | (~bcd_in[2]&~bcd_in[1]&~bcd_in[0]);
  assign segb = bcd_in[3] | ~bcd_in[2] | (~bcd_in[1]&~bcd_in[0]) | (bcd_in[1]&bcd_in[0]);
  assign segc = bcd_in[3] | bcd_in[2] | ~bcd_in[1] | bcd_in[0];
  assign segd = bcd_in[3] | (bcd_in[2]&~bcd_in[1]&bcd_in[0]) | (~bcd_in[2]&bcd_in[1]) | (bcd_in[1]&~bcd_in[0]) | (~bcd_in[2]&~bcd_in[0]);
  assign sege = (bcd_in[1]&~bcd_in[0]) | (~bcd_in[2]&~bcd_in[0]);
  assign segf = bcd_in[3] | (bcd_in[2]&~bcd_in[1]) | (bcd_in[2]&~bcd_in[0]) | (~bcd_in[1]&~bcd_in[0]);
  assign segg = bcd_in[3] | (bcd_in[1]&~bcd_in[0]) | (bcd_in[2]^bcd_in[1]);

endmodule