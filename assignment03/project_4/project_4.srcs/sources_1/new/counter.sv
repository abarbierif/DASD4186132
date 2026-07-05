module counter #(parameter WIDTH=32, MAX_COUNT=256)(
  input clk,
  input rst,
  input count_en,
  output logic [WIDTH-1:0] count
  //output count_done
);
 
  always_ff @(posedge clk)begin
    if(rst) begin
      count <= 0;
    end else begin
      if(count >= MAX_COUNT) begin
        count <= 0;
      end else if(count_en) begin
        count <= count + 1;
      end
    end
  end

  //assign count_done = (count == MAX_COUNT);

endmodule
