module decoder #(parameter WIDTH=8)(
  input [WIDTH-1:0] data_in,
  output [2**WIDTH-1:0] data_out
);
  
  assign data_out = 1 << data_in;
  
endmodule
