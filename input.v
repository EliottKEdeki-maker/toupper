`timescale 1ns / 1ps
module num (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p); // Set up 8 inputs and outputs for digit you input and output of toupper function
  
  
  input a, b, c, d, e, f, g, h;
  output i, j, k, l, m, n, o, p;
  wire w1;
  
  and #(10) (j, b, c); // j is only 1 if both b and c and are 1 so I use b and c to find j

  xor #(15) (w1, b, c);// k is only true for b = 1 and c = 0 so I use xnor to get rid of 00 and 11 then check for b = 1 to get b = 1 and c = 0 
  and #(10) (k, w1, b);

  buf #(4) (i, a); // buff for these values since they never change since we are binary subtracting 32 which is 100000
  buf #(4) (l, d);
  buf #(4) (m, e);
  buf #(4) (n, f);
  buf #(4) (o, g);
  buf #(4) (p, h);
  
endmodule
