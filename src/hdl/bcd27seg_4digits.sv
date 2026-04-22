module bcd27seg_4digits(
  input [3:0] bcd_in0, bcd_in1, bcd_in2, bcd_in3,
  input show,
  output [27:0] seven_seg
);

  logic [27:0] seven_seg_tmp;

  bcd27seg_1digit bcd0(
    .bcd_in(bcd_in0),
    .seg_out(seven_seg_tmp[27:21])
  );

  bcd27seg_1digit bcd1(
    .bcd_in(bcd_in1),
    .seg_out(seven_seg_tmp[20:14])
  );
  
  bcd27seg_1digit bcd2(
    .bcd_in(bcd_in2),
    .seg_out(seven_seg_tmp[13:7])
  );

  bcd27seg_1digit bcd3(
    .bcd_in(bcd_in3),
    .seg_out(seven_seg_tmp[6:0])
  );
  
  // invierte para activo bajo, show=0 fuerza los segmentos apagados
  assign seven_seg = show ? ~seven_seg_tmp : {28{1'b1}};

endmodule
