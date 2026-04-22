`timescale 1ns / 1ps
module tb_top();

  logic clk;
  logic pause;
  logic load;
  logic [15:0] bcd_in;
  logic [6:0] seg;
  logic [3:0] an;

  top dut(
    .clk(clk),
    .pause(pause),
    .load(load),
    .in(bcd_in),
    .seg(seg),
    .an(an)
  );

  initial begin

    // 0: inicializacion
    clk=0; pause=0; load=0;
    
    // 1: valor pequeño para verificar finish y fsm_show
    bcd_in=16'h0005;
    #120000000;
    load=1; #100000000; load=0;
    
    // 2: load activo durante una cuenta en progreso
    #200000000;
    load=1; #100000000; load=0;
    
    // 3: valor con digitos >9 y >5 para verificar saturacion
    #1000000000;
    bcd_in=16'h0B1A;
    load=1; #150000000; load=0;
    
    // 4: logica de fsm_pause
    #400000000;
    pause=1; #300000000; pause=0;
    
    #500000000;
    pause=1; #300000000; pause=0;
    
  end

  always #5 clk=~clk;

endmodule
