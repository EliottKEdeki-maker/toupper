module num (a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p); // Set up 8 inputs and outputs for digit you input and output of toupper function
  timescale 1ns / 1ps
  input a, b, c, d, e, f, g, h;
  output i, j, k, l, m, n, o, p;
  wire w1, w2, w3, w4;
  
  and #(10) (w1, b, c); // j is only 1 if both b and c and are 1 so I use b and c to find j
  buff #(4) (j, w1);

  xor #(15) (w3, b, c);// k is only true for b = 1 and c = 0 so I use xnor to get rid of 00 and 11 then check for b = 1 to get b = 1 and c = 0 
  and #(10) (w4, w3, b);
  buff #(4) (k, w4);

  buff #(4) (i, a); // buff for these values since they never change since we are binary subtracting 32 which is 100000
  buff #(4) (l, d);
  buff #(4) (m, e);
  buff #(4) (n, f);
  buff #(4) (o, g);
  buff #(4) (p, h);
  
endmodule
