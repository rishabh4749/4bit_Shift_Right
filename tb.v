`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2024 13:01:46
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg clk;
    reg areset;
    reg load;
    reg ena;
    reg [3:0] data;
    wire [3:0] q;
    always #5 clk=~clk;
    des dut(.clk(clk),.areset(areset),.load(load),.ena(ena),.data(data),.q(q));
    initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t areset=%b load=%b ena=%b data=%b q=%b",$time,areset,load,ena,data,q);
    clk<=0;
    #4 data<=6;
    load<=1;
    areset<=0;
    ena<=0;
    #10 ena<=1;
    load<=0;
    #5 areset<=1;
    #30 $finish;
    end
endmodule
