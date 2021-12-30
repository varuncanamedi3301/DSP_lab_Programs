% Low pass FIR filter using Hanning window
clc;
clear all;

n = 20;
fp = 100;
fq = 300;
fs = 1000;
fn = 2*fp/fs;
window = hanning(n+1);
b = fir1(n, fn, 'low', window);
w = 0:0.001:pi;

[h om] = freqz(b,1,w);
a = 20*log10(abs(h));
b = angle(h);

subplot(2,1,1); plot(w/pi, a);
xlabel('normalized frequency');
ylabel('gain in dB');
title('magnitude response');

subplot(2,1,2); plot(w/pi, b);
xlabel('normalized frequency');
ylabel('Phase in radians');
title('phase response');