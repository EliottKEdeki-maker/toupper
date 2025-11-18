`timescale 1ns / 1ps
module num (i0,i1,i2,i3,i4,i5,i6,i7,o0,o1,o2,o3,o4,o5,o6,o7); // Set up 8 inputs and outputs for digit you input and output of toupper function
  
  
  input i0, i1, i2, i3, i4, i5, i6, i7;
  output o0, o1, o2, o3, o4, o5, o6, o7;
  wire w1;
  
  and #(10) (o1, i1, i2); // o1 is only 1 if both i1 and i2 and are 1 so I use i1 and i2 to find o2

  xor #(15) (w1, i1, i2);// o2 is only true for i1 = 1 and i2 = 0 so I use xnor to get rid of 00 and 11 then check for i1 = 1 to get i1 = 1 and i2 = 0 
  and #(10) (o2, w1, i1);

  buf #(4) (o0, i0); // buff for these values since they never change since we are binary subtracting 32 which is 100000
  buf #(4) (o3, i3);
  buf #(4) (o4, i4);
  buf #(4) (o5, i5);
  buf #(4) (o6, i6);
  buf #(4) (o7, i7);
  
endmodule
