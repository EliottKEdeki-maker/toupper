`timescale 1ns / 1ps;
module tb;
  
  wire W1, W2, W3, W4, W5, W6, W7, W8;     // 8 wires for 8 outputs 
  reg A,B,C,D,E,F,G,H ;      // 8 regs for 8 inputs
  num N1(A,B,C,D,E,F,G,H,W1,W2,W3,W4,W5,W6,W7,W8);

initial 
  begin
    $dumpfile("wave.vcd")
    $dumpvars(0, tb, num);
    A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b0; E = 1'b1; F = 1'b0; G = 1'b0; H = 1'b0;
    #100 A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0; E = 1'b1; F = 1'b0; G = 1'b0; H = 1'b0;
    #100 A = 1'b1; B = 1'b0; C = 1'b1; D = 1'b1; E = 1'b0; F = 1'b1; G = 1'b1; H = 1'b1;
    #100 A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0; E = 1'b0; F = 1'b0; G = 1'b1; H = 1'b1;
    #100 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1; E = 1'b1; F = 1'b1; G = 1'b0; H = 1'b0;
    #100 A = 1'b0; B = 1'b0; C = 1'b0; D = 1'b1; E = 1'b0; F = 1'b1; G = 1'b0; H = 1'b0;
    #100 A = 1'b1; B = 1'b1; C = 1'b1; D = 1'b0; E = 1'b1; F = 1'b0; G = 1'b1; H = 1'b1;
    #100 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0; E = 1'b0; F = 1'b0; G = 1'b0; H = 1'b1;
    #100 A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0; E = 1'b0; F = 1'b0; G = 1'b0; H = 1'b1;
    #100 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1; E = 1'b1; F = 1'b0; G = 1'b1; H = 1'b0;
    #100 A = 1'b0; B = 1'b1; C = 1'b0; D = 1'b0; E = 1'b0; F = 1'b1; G = 1'b1; H = 1'b1;
    #100 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b0; E = 1'b1; F = 1'b1; G = 1'b0; H = 1'b1;
    #100 A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b1; E = 1'b0; F = 1'b0; G = 1'b1; H = 1'b0;
    #100 A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1; E = 1'b0; F = 1'b0; G = 1'b0; H = 1'b0;
    #100 A = 1'b1; B = 1'b1; C = 1'b0; D = 1'b0; E = 1'b1; F = 1'b1; G = 1'b1; H = 1'b1;
    #100 A = 1'b0; B = 1'b0; C = 1'b1; D = 1'b1; E = 1'b1; F = 1'b0; G = 1'b1; H = 1'b0;
    #100 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1; E = 1'b1; F = 1'b0; G = 1'b1; H = 1'b1;
    #100 A = 1'b1; B = 1'b0; C = 1'b0; D = 1'b0; E = 1'b0; F = 1'b1; G = 1'b0; H = 1'b0;
    #100 A = 1'b0; B = 1'b1; C = 1'b1; D = 1'b1; E = 1'b1; F = 1'b1; G = 1'b1; H = 1'b1;
    
  end
  initial #200 $finish;
endmodule
 
