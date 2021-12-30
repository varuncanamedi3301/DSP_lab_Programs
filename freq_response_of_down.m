%  Effect of dowm sampling in frequency domain

clc;
clear all;
close all;

F = [0 0.5 1];
A = [1 0 0];

% Input sequence

x = fir2(256, F, A);
w = -2*pi:0.01:2*pi;
Xw = freqz(x, 1, w);

subplot(2,1,1);
plot(w/pi, abs(Xw)); grid

xlabel('Freq in pi units');
ylabel('Magnitude');
title('Input Spectrum');

% Down Sampled Sequemce
M = 3; y=x([1:M:length(x)]);
Yw = freqz(y,1,w);

subplot(2,1,2);
plot(w/pi, abs(Yw)); grid

xlabel('Freq in pi units');
ylabel('Magnitude');
title('Spectrum of down sampled signal');


