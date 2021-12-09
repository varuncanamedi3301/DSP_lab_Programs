// 14. Performing Linear Convolution using Circular Convolution

clear all;
clc;
close;

h = [1,2,3]; // Impulse response of LTI system
x = [1,2,2,1]; // Input Response of LTI system
N1 = length(x);
N2 = length(h);

N = N1 + N2 - 1;
disp("Length of output Response y(n) ",N);

// Padding zeros to make length of 'h' and 'x' Equal to length of output response 'y'

h1 = [h, zeros(1,N-N2)];
x1 = [x, zeros(1,N-N1)];

H = fft(h1, -1);
X = fft(x1, -1);

Y = X.*H;

y = abs(fft(Y,1));
disp("DFT of i/p X(k) =", X);
disp("DFT pf impulse sequence H(k) =",H);
disp("DFT pf impulse sequence Y(k) =",Y);
disp("Linear Convolution result y[n] =",y);
