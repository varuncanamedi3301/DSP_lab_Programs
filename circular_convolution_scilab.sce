// 13 Performing Circular COnvolution using DFT and IDFT method
clear all;
clc;
close;

L = 4;  // Length of the Sequence
N = 4;  // N point DFT

x1 = [2,1,2,1]
x2 = [1,2,3,4];

// Computing DFT
X1 = fft(x1, -1);
X2 = fft(x2, -1);
disp('DFT of x1[n] is X1(k) = ',X1);
disp('DFT of x2[n] is X2(k) = ', X2);

y1 = X1.*X2;

y = abs(ifft(y1));
// or y = fft(y1,1);

disp("Circular Convolution of x1 and x2 = ", y)
