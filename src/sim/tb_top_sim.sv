`timescale 1ns / 1ps
module tb_top_sim();

  logic clk;
  logic pause;
  logic load;
  logic clk_enable;
  logic [15:0] bcd_in;
  logic [6:0] seg;
  logic [3:0] an;
  logic [13:0] counter = 0;

  top_sim dut(
    .clk(clk),
    .pause(pause),
    .load(load),
    .clk_enable(clk_enable),
    .in(bcd_in),
    .seg(seg),
    .an(an)
  );

  initial begin

    // 0: inicializacion
    clk=0; clk_enable=0; pause=0; load=0;
    
    // 1: valor pequeño para verificar finish y fsm_show
    bcd_in=16'h0005;
    #12000;
    load=1; #10000; load=0;
    
    // 2: load activo durante una cuenta en progreso
    #20000;
    load=1; #20000; load=0;
    
    // 3: valor con digitos >9 y >5 para verificar saturacion
    #500000;
    bcd_in=16'h0B1A;
    load=1; #20000; load=0;
    
    // 4: logica de fsm_pause
    // no se incluye el driver en top_sim para disminuir tiempo de simulacion, #2 para un caso ideal
    #40000;
    pause=1; #2; pause=0;
    
    #100000;
    pause=1; #2; pause=0;
    
  end
  
  // Reloj de período 2 ns (simulación). Los 4 anodos se multiplexan en 8000 ciclos de clk (proporción 8000:1 respecto a clk_enable). Se escoge counter=10000 (> 8000) para garantizar que un ciclo completo de multiplexado ocurra antes de cada actualización de los displays.
  always #1 clk=~clk; 

  always @(posedge clk) begin
    if (counter == 9999) begin
      counter <= 0;
      clk_enable <= 1'b1;
    end else begin
      counter <= counter + 1;
      clk_enable <= 1'b0;
    end
  end
  
endmodule
