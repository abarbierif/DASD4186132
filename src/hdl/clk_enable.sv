`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.04.2026 13:10:37
// Design Name: 
// Module Name: clk_enable
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clk_div(input logic clk,output logic clk_enable);
    logic [23:0] count=0;
    
    always_ff@(posedge clk) begin

       if(count==9999999) begin 
          count<=0;
          clk_enable<=1;
       end else begin
          count<=count+1;
          clk_enable<=0;
       end

    end
endmodule

module button_driver(input logic clk, button,output logic enable);

logic [19:0] counter = 0;
logic clk_slow = 0;
logic en_sync,en_1,en_2;


assign enable=(~en_2 && en_1);

always_ff @(posedge clk) begin    
    
    
    en_1<=en_sync;
    en_2<=en_1;
    
    if(counter==500001) begin
        counter<=0;
        clk_slow<=~clk_slow;
    end
    else begin
        counter<=counter+1;
    end
    
    

end

always_ff@(posedge clk_slow) begin
    en_sync<=button;  
end


endmodule 