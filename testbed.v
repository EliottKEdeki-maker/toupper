`timescale 1ns / 1ps
module tb;
  
  wire o7, o6, o5, o4, o3, o2, o1, o0;     // 8 wires for 8 outputs 
  reg i7,i6,i5,i4,i3,i2,i1,i0;      // 8 regs for 8 inputs
  num N1 (i7,i6,i5,i4,i3,i2,i1,i0,o7,o6,o5,o4,o3,o2,o1,o0);

initial //50 as arbitrary inter-input delay to begin with before we find threshold
  begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb, N1);
    i7 = 1'b0; i6 = 1'b0; i5 = 1'b1; i4 = 1'b0; i3 = 1'b1; i2 = 1'b0; i1 = 1'b0; i0 = 1'b0; // testing 00101000
    #25 i7 = 1'b0; i6 = 1'b1; i5 = 1'b0; i4 = 1'b0; i3 = 1'b1; i2 = 1'b0; i1 = 1'b0; i0 = 1'b0; // testing 01001000    
    #25 i7 = 1'b1; i6 = 1'b0; i5 = 1'b1; i4 = 1'b1; i3 = 1'b0; i2 = 1'b1; i1 = 1'b1; i0 = 1'b1; // testing 10110111    
    #25 i7 = 1'b1; i6 = 1'b0; i5 = 1'b0; i4 = 1'b0; i3 = 1'b0; i2 = 1'b0; i1 = 1'b1; i0 = 1'b1; // testing 10000011 
    #25 i7 = 1'b0; i6 = 1'b1; i5 = 1'b1; i4 = 1'b1; i3 = 1'b1; i2 = 1'b1; i1 = 1'b0; i0 = 1'b0; // testing 01111100    
    #25 i7 = 1'b0; i6 = 1'b0; i5 = 1'b0; i4 = 1'b1; i3 = 1'b0; i2 = 1'b1; i1 = 1'b0; i0 = 1'b0; // testing 00010100    
    #25 i7 = 1'b1; i6 = 1'b1; i5 = 1'b1; i4 = 1'b0; i3 = 1'b1; i2 = 1'b0; i1 = 1'b1; i0 = 1'b1; // testing 11101011    
    #25 i7 = 1'b0; i6 = 1'b1; i5 = 1'b1; i4 = 1'b0; i3 = 1'b0; i2 = 1'b0; i1 = 1'b0; i0 = 1'b1; // testing 01100001    
    #25 i7 = 1'b0; i6 = 1'b1; i5 = 1'b0; i4 = 1'b0; i3 = 1'b0; i2 = 1'b0; i1 = 1'b0; i0 = 1'b1; // testing 01000001    
    #25 i7 = 1'b0; i6 = 1'b1; i5 = 1'b1; i4 = 1'b1; i3 = 1'b1; i2 = 1'b0; i1 = 1'b1; i0 = 1'b0; // testing 01111010    
    #25 i7 = 1'b0; i6 = 1'b1; i5 = 1'b0; i4 = 1'b0; i3 = 1'b0; i2 = 1'b1; i1 = 1'b1; i0 = 1'b1; // testing 01000111    
    #25 i7 = 1'b0; i6 = 1'b1; i5 = 1'b1; i4 = 1'b0; i3 = 1'b1; i2 = 1'b1; i1 = 1'b0; i0 = 1'b1; // testing 01101101    
    #25 i7 = 1'b1; i6 = 1'b0; i5 = 1'b0; i4 = 1'b1; i3 = 1'b0; i2 = 1'b0; i1 = 1'b1; i0 = 1'b0; // testing 10010010    
    #25 i7 = 1'b0; i6 = 1'b0; i5 = 1'b1; i4 = 1'b1; i3 = 1'b0; i2 = 1'b0; i1 = 1'b0; i0 = 1'b0; // testing 00110000    
    #25 i7 = 1'b1; i6 = 1'b1; i5 = 1'b0; i4 = 1'b0; i3 = 1'b1; i2 = 1'b1; i1 = 1'b1; i0 = 1'b1; // testing 11001111    
    #25 i7 = 1'b0; i6 = 1'b0; i5 = 1'b1; i4 = 1'b1; i3 = 1'b1; i2 = 1'b0; i1 = 1'b1; i0 = 1'b0; // testing 00111010    
    #25 i7 = 1'b0; i6 = 1'b1; i5 = 1'b1; i4 = 1'b1; i3 = 1'b1; i2 = 1'b0; i1 = 1'b1; i0 = 1'b1; // testing 01111011    
    #25 i7 = 1'b1; i6 = 1'b0; i5 = 1'b0; i4 = 1'b0; i3 = 1'b0; i2 = 1'b1; i1 = 1'b0; i0 = 1'b0; // testing 10000100    
    #25 i7 = 1'b0; i6 = 1'b1; i5 = 1'b1; i4 = 1'b1; i3 = 1'b1; i2 = 1'b1; i1 = 1'b1; i0 = 1'b1; // testing 01111111    
    
  end
  initial #494 $finish; //total time is 26 since 26 * 19 = 494 which is the total time needed for each input
endmodule
 
