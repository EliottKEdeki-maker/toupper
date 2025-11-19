`timescale 1ns / 1ps
module num (i7,i6,i5,i4,i3,i2,i1,i0,o7,o6,o5,o4,o3,o2,o1,o0); // Set up 8 inputs and outputs for digit you input and output of toupper function
  
  
  input i7,i6,i5,i4,i3,i2,i1,i0;
  output o7,o6,o5,o4,o3,o2,o1,o0;
  wire w1;
  
  and #(10) (o6, i6, i5); // o1 is only 1 if both i6 and i5 and are 1 so I use i6 AND i5 to find o1

  xor #(15) (w1, i6, i5);// o5 is only 1 for i6 = 1 and i5 = 0 so I use xnor to get rid of 00 and 11 then check for i6 = 1 to get i6 = 1 and i5 = 0 
  and #(10) (o5, w1, i6);

  buf #(4) (o7, i7); // buf for these values since they never change since we are binary subtracting 32 which is 100000
  buf #(4) (o4, i4);
  buf #(4) (o3, i3);
  buf #(4) (o2, i2);
  buf #(4) (o1, i1);
  buf #(4) (o0, i0);
  
endmodule
