% Sampling rate conversion by a ratio of two integers

clc;
clear all;
close all;

L = 100;
M = 2;
n = 0:29;
x = sin(2*pi*0.43*n) + sin(2*pi*0.31*n);
y = resample(x,L,M);

subplot(2,1,1),stem(n,x(1:30));
xlabel('Time index n');
ylabel('amplitude');
title('input sequence');

m = 0:(30*L/M)-1;

subplot(2,1,2),stem(m, y(1:30*L/M));
axis([0 (30*L/M)-1 -2.2 2.2])
xlabel('Time index n');
ylabel('amplitude');
title('output sequence');