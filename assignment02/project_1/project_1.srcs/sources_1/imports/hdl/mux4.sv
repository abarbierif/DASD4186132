module mux4 #(
  parameter WIDTH=8
  )(
  input [WIDTH-1:0] in0, in1, in2, in3,
  input [1:0] sel,
  output [WIDTH-1:0] out
);

  assign out = sel[0] ? (sel[1] ? in3 : in1) : (sel[1] ? in2 : in0);

endmodule
