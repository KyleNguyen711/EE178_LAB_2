`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2021 10:52:06 PM
// Design Name: 
// Module Name: quad_seven_seg
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


module quad_seven_seg(
input wire clk,
input wire [3:0] va13,
input wire [3:0] va12,
input wire [3:0] va11,
input wire [3:0] va10,
output reg [3:0] an,
output reg ca,
output reg cb,
output reg cc,
output reg cd,
output reg ce,
output reg cf,
output reg cg,
output wire dp
);

assign dp =1'b1;

localparam N = 18;

// signal declaration
reg [N-1:0] q_reg;
wire [N-1:0] q_next; 
reg [3:0] sseg;
wire rst;   

//N-bit counter
always @(posedge clk, posedge rst)
begin
    if(rst)
        q_reg = 0;
    else
        q_reg = q_next;
end

assign q_next = q_reg +1;
// 2 MSB ofcounter to control 4-to-1 multiplexing
always@ *
begin
    case(q_reg[N-1:N-2])
        2'b00: begin
                an = 4'b1110;
                sseg = va10;
                end
        2'b01: begin
                an = 4'b1101;
                sseg = va11;
                end
        2'b10: begin
                an = 4'b1011;
                sseg = va12;
                end
        2'b11: begin
                an = 4'b0111;
                sseg = va13;
                end
    endcase
end
// 4 to 7 Decoder
always @*
      case(sseg)
    4'd0 : {ca,cb,cc,cd,ce,cf,cg} = {7'b0000001};
    4'd1 : {ca,cb,cc,cd,ce,cf,cg} = {7'b1001111}; 
    4'd2 : {ca,cb,cc,cd,ce,cf,cg} = {7'b0010010}; 
    4'd3 : {ca,cb,cc,cd,ce,cf,cg} = {7'b0000110}; 
    4'd4 : {ca,cb,cc,cd,ce,cf,cg} = {7'b1001100}; 
    4'd5 : {ca,cb,cc,cd,ce,cf,cg} = {7'b0100100}; 
    4'd6 : {ca,cb,cc,cd,ce,cf,cg} = {7'b0100000}; 
    4'd7 : {ca,cb,cc,cd,ce,cf,cg} = {7'b0001111}; 
    4'd8 : {ca,cb,cc,cd,ce,cf,cg} = {7'b0000000}; 
    4'd9 : {ca,cb,cc,cd,ce,cf,cg} = {7'b0000100};
    4'd10: {ca,cb,cc,cd,ce,cf,cg} = {7'b0001000};
    4'd11: {ca,cb,cc,cd,ce,cf,cg} = {7'b1100000};
    4'd12: {ca,cb,cc,cd,ce,cf,cg} = {7'b0110001};
    4'd13: {ca,cb,cc,cd,ce,cf,cg} = {7'b1000010};
    4'd14: {ca,cb,cc,cd,ce,cf,cg} = {7'b0110000};
    4'd15: {ca,cb,cc,cd,ce,cf,cg} = {7'b0111000};
    default : {ca,cb,cc,cd,ce,cf,cg} = 7'b1111110;
     endcase
endmodule
