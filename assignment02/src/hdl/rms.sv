module rms(
  input clk,
  input rst,
  input start,
  input last_sample,
  input [13:0] data_in,
  input [19:0] div_lut_data, //Q0.20
  output ready
);

  logic mult_en, acc_en, div0_en, div1_en, div2_en;

  logic [27:0] x2, x2_reg;
  logic [37:0] acc_x2, acc_x2_reg;
  logic [38:0] div_lsb, div_msb, div_lsb_reg, div_msb_reg;
  logic [57:0] div_msb_reg_shf19;
  logic [57:0] div_x2;
  logic [33:0] div_x2_reg;

  logic last_sample_reg0, last_sample_reg1;

  logic [63:0] div_x2_reg_shf6;
  logic [5:0] lut_norm_addr;
  logic [17:0] nr_xk0, nr_xk;
  logic xk_sel;
  logic [17:0] nr_xk_next;
  logic [63:0] nr_xk_2, nr_xk2, nr_3_xk2x;
  logic [68:0] nr_xk2x;
  logic [63:0] nr_xk_2_reg, nr_xk2_reg, nr_xk2x_reg, nr_3_xk2x_reg;
  logic [96:0] nr_xk_2_3_xk2x, nr_xk_2_3_xk2x_reg;
  logic [63:0] nr_sqrtx, nr_sqrtx_reg;
  logic nr0_en, nr1_en, nr2_en, nr3_en, nr4_en;

  rms_fsm fsm_rms(
    .clk(clk),
    .rst(rst),
    .start(start),
    .last_sample(last_sample_reg1),
    .mult_en(mult_en),
    .acc_en(acc_en),
    .div0_en(div0_en),
    .div1_en(div1_en),
    .xk_sel(xk_sel),
    .nr0_en(nr0_en),
    .nr1_en(nr1_en),
    .nr2_en(nr2_en),
    .nr3_en(nr3_en),
    .nr4_en(nr4_en),
    .ready(ready)
  );


  // datapath
  assign x2 = data_in * data_in; //Q4.24
  assign acc_x2 = acc_x2_reg + x2_reg; //Q14.24
  assign div_lsb = acc_x2_reg[18:0] * div_lut_data;
  assign div_msb = acc_x2_reg[37:19] * div_lut_data;
  assign div_msb_reg_shf19 = (div_msb_reg << 19);
  assign div_x2 = div_msb_reg_shf19 + div_lsb_reg;
  
  // leading one
  assign div_x2_reg_shf6 = div_x2_reg << 6;
  priority_encoder leading_one(
    .data_in(div_x2_reg_shf6),
    .data_out(lut_norm_addr)
  );
  
  norm_lut lut_norm(
    .clk(clk),
    .rst(rst),
    .addr(lut_norm_addr),
    .data_out(nr_xk0) //Q0.18
  );

  mux2 #(.WIDTH(18)) xk_mux(
    .in0(nr_xk0),
    .in1(nr_xk_next),
    .sel(xk_sel),
    .out(nr_xk)
  );
  
  //assign nr_xkx = nr_xk * div_x2_reg; //Q14.31 
  assign nr_xk_2 = nr_xk >> 1; //Q0.18
  
  assign nr_xk2 = nr_xk * nr_xk; //Q?.36
  assign nr_xk2x = nr_xk2_reg * div_x2_reg; //
  //assign nr_xk2x_msb = nr_xk2_reg[35:18] * div_x2_reg;
  //assign nr_xk2x_lsb = nr_xk2_reg[17:0] * div_x2_reg;
  //assign nr_xk2x_msb_shf18 = nr_xk2x_msb_reg << 18;
  //assign nr_xk2x = nr_xk2x_msb_shf18 + nr_xk2x_lsb_reg;
  assign nr_3_xk2x = (64'd3<<20) - nr_xk2x_reg;
  
  assign nr_xk_2_3_xk2x = nr_3_xk2x_reg * nr_xk_2_reg;

  assign nr_sqrtx = div_x2_reg * nr_xk_next;

  always_ff @(posedge clk) begin
    if(rst) begin
      x2_reg <= 0;
      acc_x2_reg <= 0;
      div_lsb_reg <= 0;
      div_msb_reg <= 0;
      div_x2_reg <= 0;
      nr_sqrtx_reg <= 0;

      last_sample_reg0 <= 0;
      last_sample_reg1 <= 0;

    end else begin
      if(mult_en) begin
        x2_reg <= x2; //Q4.24
      end
      
      if(acc_en) begin
	      acc_x2_reg <= acc_x2; //Q14.20
      end

      if(div0_en) begin
	      div_lsb_reg <= div_lsb;
	      div_msb_reg <= div_msb;
      end

      if(div1_en) begin
        div_x2_reg <= div_x2[57:24]; //Q14.20
      end

      if(nr0_en) begin
        nr_xk_2_reg <= nr_xk_2; //Q?.13
        nr_xk2_reg  <= nr_xk2[30:6]; //Q5.20
      end
 
      if(nr1_en) begin
        nr_xk2x_reg <= nr_xk2x[44:20]; //Q5.20
      end

      if(nr2_en) begin
        nr_3_xk2x_reg <= nr_3_xk2x[24:0]; //Q5.20
      end

      if(nr3_en) begin
        nr_xk_2_3_xk2x_reg <= nr_xk_2_3_xk2x; //Q16
        nr_xk_next <= nr_xk_2_3_xk2x[37:20]; //Q5.13
      end

      if(nr4_en) begin
        nr_sqrtx_reg <= nr_sqrtx[42:13]; //Q19.33 -> Q10.20
      end
         
      last_sample_reg0 <= last_sample;
      last_sample_reg1 <= last_sample_reg0;
    end
  end

endmodule  
