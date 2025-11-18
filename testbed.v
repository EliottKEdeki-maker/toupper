`timescale 1ns / 1ps
module tb;
  
  wire o0, o1, o2, o3, o4, o5, o6, o7;     // 8 wires for 8 outputs 
  reg i0,i1,i2,i3,i4,i5,i6,i7;      // 8 regs for 8 inputs
  num N1(i0,i1,i2,i3,i4,i5,i6,i7,o0,o1,o2,o3,o4,o5,o6,o7);

initial //50 as arbitrary inter-input delay to begin with before we find threshold
  begin
    $dumpfile("wave.vcd");
    $dumpvars(0, tb, N1);
    i0 = 1'b0; i1 = 1'b0; i2 = 1'b1; i3 = 1'b0; i4 = 1'b1; i5 = 1'b0; i6 = 1'b0; i7 = 1'b0; //
    #50 i0 = 1'b0; i1 = 1'b1; i2 = 1'b0; i3 = 1'b0; i4 = 1'b1; i5 = 1'b0; i6 = 1'b0; i7 = 1'b0;
    #50 i0 = 1'b1; i1 = 1'b0; i2 = 1'b1; i3 = 1'b1; i4 = 1'b0; i5 = 1'b1; i6 = 1'b1; i7 = 1'b1;
    #50 i0 = 1'b1; i1 = 1'b0; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; i5 = 1'b0; i6 = 1'b1; i7 = 1'b1;
    #50 i0 = 1'b0; i1 = 1'b1; i2 = 1'b1; i3 = 1'b1; i4 = 1'b1; i5 = 1'b1; i6 = 1'b0; i7 = 1'b0;
    #50 i0 = 1'b0; i1 = 1'b0; i2 = 1'b0; i3 = 1'b1; i4 = 1'b0; i5 = 1'b1; i6 = 1'b0; i7 = 1'b0;
    #50 i0 = 1'b1; i1 = 1'b1; i2 = 1'b1; i3 = 1'b0; i4 = 1'b1; i5 = 1'b0; i6 = 1'b1; i7 = 1'b1;
    #50 i0 = 1'b0; i1 = 1'b1; i2 = 1'b1; i3 = 1'b0; i4 = 1'b0; i5 = 1'b0; i6 = 1'b0; i7 = 1'b1;
    #50 i0 = 1'b0; i1 = 1'b1; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; i5 = 1'b0; i6 = 1'b0; i7 = 1'b1;
    #50 i0 = 1'b0; i1 = 1'b1; i2 = 1'b1; i3 = 1'b1; i4 = 1'b1; i5 = 1'b0; i6 = 1'b1; i7 = 1'b0;
    #50 i0 = 1'b0; i1 = 1'b1; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; i5 = 1'b1; i6 = 1'b1; i7 = 1'b1;
    #50 i0 = 1'b0; i1 = 1'b1; i2 = 1'b1; i3 = 1'b0; i4 = 1'b1; i5 = 1'b1; i6 = 1'b0; i7 = 1'b1;
    #50 i0 = 1'b1; i1 = 1'b0; i2 = 1'b0; i3 = 1'b1; i4 = 1'b0; i5 = 1'b0; i6 = 1'b1; i7 = 1'b0;
    #50 i0 = 1'b0; i1 = 1'b0; i2 = 1'b1; i3 = 1'b1; i4 = 1'b0; i5 = 1'b0; i6 = 1'b0; i7 = 1'b0;
    #50 i0 = 1'b1; i1 = 1'b1; i2 = 1'b0; i3 = 1'b0; i4 = 1'b1; i5 = 1'b1; i6 = 1'b1; i7 = 1'b1;
    #50 i0 = 1'b0; i1 = 1'b0; i2 = 1'b1; i3 = 1'b1; i4 = 1'b1; i5 = 1'b0; i6 = 1'b1; i7 = 1'b0;
    #50 i0 = 1'b0; i1 = 1'b1; i2 = 1'b1; i3 = 1'b1; i4 = 1'b1; i5 = 1'b0; i6 = 1'b1; i7 = 1'b1;
    #50 i0 = 1'b1; i1 = 1'b0; i2 = 1'b0; i3 = 1'b0; i4 = 1'b0; i5 = 1'b1; i6 = 1'b0; i7 = 1'b0;
    #50 i0 = 1'b0; i1 = 1'b1; i2 = 1'b1; i3 = 1'b1; i4 = 1'b1; i5 = 1'b1; i6 = 1'b1; i7 = 1'b1;
    
  end
  initial #950 $finish; //total time is 950 since 50 * 19 = 950 which is the total time needed for each input
endmodule
 
