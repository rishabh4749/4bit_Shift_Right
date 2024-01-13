`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2024 12:55:28
// Design Name: 
// Module Name: des
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


module des(
    input clk,
    input areset,
    input load,
    input ena,
    input [3:0] data,
    output reg [3:0] q
    );
    integer i;
    always @ (posedge clk or posedge areset) begin
    if(areset)
    q<=0;
    else begin
    if(load)
    q<=data;
    else if(ena) begin
    for(i=0;i<3;i=i+1) begin
    q[i]<=q[i+1];
    q[3]<=0;
    end end end end
endmodule
