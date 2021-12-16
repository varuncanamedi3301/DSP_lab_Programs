% EXPERIMENT 21. Design of Chebyshev low pass type-1filter


clc;
clear all;
close all;

alphas = 0.9;
alphap = 0.15;

wp = 0.3*pi;
ws = 0.5*pi;

[n,wn] = cheb1ord(wp/pi,ws/pi,alphap,alphas);
[b,a] = cheby1(n,alphap,wn);
[h,w] = freqz(b,a);

subplot(2,1,1), plot(w/pi, 20*log10(abs(h)));
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title('Magnitude Response');

subplot(2,1,2), plot(w/pi, angle(h));
xlabel('Normalized Frequency');
ylabel('Phase in Radians');
title('Phase Response');
