% EXPERIMENT 19. Design of bandstop pass filter


clc;
clear all;
close all;

alphas = 50;
alphap = 0.5;

wp = [0.4 0.6];
ws = [0.3 0.7];

[n,wn] = buttord(wp,ws,alphap,alphas);
[b,a] = butter(n,wn, 'stop');
[h,w] = freqz(b,a);

subplot(2,1,1), plot(w/pi, 20*log10(abs(h)));
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title('Magnitude Response');

subplot(2,1,2), plot(w/pi, angle(h));
xlabel('Normalized Frequency');
ylabel('Phase in Radians');
title('Phase Response');
