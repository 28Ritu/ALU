`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.04.2017 16:49:06
// Design Name: 
// Module Name: ALU_Design
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


module ALU_Design(out, A, B, sel, Clk);
     output reg [3:0] out;
     input [3:0] A, B;
     input [2:0] sel;
     input Clk;
     
     always @(posedge Clk)
     begin
        case(sel)
        3'b000: out=A+B;
        3'b001: out=A-B;
        3'b010: out=A*B;
        3'b011: out=(A!=B);
        3'b100: out=A&B;
        3'b101: out=A|B;
        3'b110: out=A^B;
        3'b111: out=~A;
        endcase
      end
endmodule

module test_ALU_Design;
      wire [3:0] t_out;
      reg [3:0] t_A, t_B;
      reg [2:0] t_sel;
      reg t_Clk;
      
      ALU_Design A(.out(t_out), .A(t_A), .B(t_B), .sel(t_sel), .Clk(t_Clk));
      
      initial begin
        t_Clk=0;
        
        //1st Function test
        t_sel=3'b000;
        t_A=4'b1000; t_B=4'b0001;
        repeat (2)
                #2 t_Clk=~t_Clk; 
        t_A=4'b1100;
        repeat (2)
                #2 t_Clk=~t_Clk;
        
        //2nd Function test
        t_sel=3'b001; t_A=4'b1000; t_B=4'b0001;
        repeat (2)
                #2 t_Clk=~t_Clk;
        t_A=4'b1100;
        repeat (2)
                #2 t_Clk=~t_Clk;
                
        //3rd Function test
        t_sel=3'b010; t_A=4'b1000; t_B=4'b0001;
        repeat (2)
                #2 t_Clk=~t_Clk;
        t_A=4'b1100;
        repeat (2)
                #2 t_Clk=~t_Clk;
                
        //4th Function test
        t_sel=3'b011; t_A=4'b1000; t_B=4'b0001;
        repeat (2)
                #2 t_Clk=~t_Clk;
        t_A=4'b1100;
        repeat (2)
                #2 t_Clk=~t_Clk;
                
        //5th Function test
        t_sel=3'b100; t_A=4'b1000; t_B=4'b0001;
        repeat (2)
                #2 t_Clk=~t_Clk;
        t_A=4'b1100;
        repeat (2)
                #2 t_Clk=~t_Clk;
                
        //6th Function test
        t_sel=3'b101; t_A=4'b1000; t_B=4'b0001;
        repeat (2)
                 #2 t_Clk=~t_Clk;
        t_A=4'b1100;
        repeat (2)
                 #2 t_Clk=~t_Clk;
                 
        //7th Function test
        t_sel=3'b110; t_A=4'b1000; t_B=4'b0001;
        repeat (2)
                 #2 t_Clk=~t_Clk;
        t_A=4'b1100;
        repeat (2)
                 #2 t_Clk=~t_Clk;
                 
        //8th Function test
        t_sel=3'b111; t_A=4'b1000; t_B=4'b0001;
        repeat (2)
                 #2 t_Clk=~t_Clk;
        t_A=4'b1100;
        repeat (2)
                 #2 t_Clk=~t_Clk; 
                 
        $finish;            
      end
 endmodule
