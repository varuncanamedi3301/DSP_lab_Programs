% Interpolation and decimation operation

clc;
clear all;
close all;

t = 0:0.01:0.5;
x = 1.5*cos(2*pi*50*t);
y = interp(x,4);
y1 = decimate(x,4);

subplot(3,1,1),stem(x);
xlabel('discrete time signal');
ylabel('amplitude');
title('input sequence');

subplot(3,1,2),stem(y);
xlabel('discrete time signal');
ylabel('amplitude');
title('interpolated output sequence');

subplot(3,1,3),stem(y1);
xlabel('discrete time signal');
ylabel('amplitude');
title('Decimated output sequence');
