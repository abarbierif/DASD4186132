module comparator(
  input [31:0] data_in0, data_in1,
  output eq
);

  assign eq = (data_in0 == data_in1) ? 1 : 0;

endmodule
