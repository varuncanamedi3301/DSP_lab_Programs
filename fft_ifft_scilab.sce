// 15 Performing FFT and IFFT of a discrete sequence

clear all;
clc;
close;

L = 4; // length of thr sequence
N = 4; // N point DFT

x = [1,2,3,4];

// computing DFT
X = fft(x, -1);
disp("FFT of x[n] is X(k) =", X);
x = abs(fft(X,1));
disp("IFFT of X(k) is x[n] = ",x);

// PLotiing the spectrum of Discrete Sequence

subplot(211);
a = gca()
a.data_bounds = [0,0;5,10];
plot2d3('gnn', 0:length(x)-1, x);

b = gce();
b.children(1).thickness = 3;
xtitle("Graphical Represntation of Discrete Sequence", 'n', 'x[n]');

subplot(212);
a = gce();
a.data_bounds = [0,0;5,10];
plot2d3('gnn', 0:length(X)-1, abs(X));

b = gce();
b.children(1).thickness = 3;
xtitle("Graphical Represntation of Discrete Sequence", 'k', 'X(k)');
