% EXPERIMENT 16. Design of filter using bilinear Transformation (BLT)      
% Method

clc;
clear all;
close all;

fs = 10000;
fn = fs/2;
fc = 300;

n = 5;

[z,p,k] = butter(n, fc/fn);
b = k*poly(z);
a = poly(p);
[h, om] = freqz(b, a, 512, fs);

subplot(2,1,1), plot(om, 20*log10(abs(h)));
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title('Magnitude Response');

subplot(2,1,2), plot(om, angle(h));
xlabel('Normalized Frequency');
ylabel('Phase in Radians');
title('Phase Response');
