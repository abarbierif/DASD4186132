module ad1_driver(
  // fpga interface
  input rst,
  input clk,
  input divclk,
  input start,
  output logic ready,
  output logic [11:0] data0, data1,
  // pmod interface
  input d0, d1,
  output cs,
  output logic sclk
);

  // max freq divclk: 40MHz, tested in Basys3 PMOD: 25MHz

  logic [3:0] current_state, next_state;
  logic shift;
  
  // sclk driver
  always_ff @(posedge clk) begin
    if(rst)         sclk <= 1;
    else if(divclk) sclk <= ~sclk;
  end

  logic clk_en;
  assign clk_en = divclk & ~sclk; //revisar, creo que deberia ser divclk & sclk

  // state register
  always_ff @(posedge clk) begin
    if(rst)         current_state <= 0;
    else if(clk_en) current_state <= next_state;
  end

  // next state logic
  always_comb begin
    next_state = current_state;
    if(current_state == 0) begin
      if(start) begin
	next_state = 1;
      end
    end else if(current_state < 15) begin
      next_state = current_state + 1;
    end else begin
      next_state = 0;
    end
  end

  // shif register
  always_ff @(posedge clk) begin
    if(clk_en && shift) begin
      data0 <= {data0, d0};
      data1 <= {data1, d1};
    end
  end

  // output logic
  assign shift = !(current_state == 0);
  assign ready = (current_state == 0);
  assign cs    = !(current_state == 0);

endmodule
