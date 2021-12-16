clc;
clear all;
close all;

alphas = 50;
alphap = 1;

fpass = 1050;
fstop = 600;   
fsample = 3500;

wp = 2*fpass/fsample;
ws = 2*fstop/fsample;

[n,wn] = buttord(wp,ws,alphap,alphas);
[b,a] = butter(n,wn, 'high');
[h,w] = freqz(b,a);

subplot(2,1,1), plot(w/pi, 20*log10(abs(h)));
xlabel('Normalized Frequency');
ylabel('Gain in dB');
title('Magnitude Response');

subplot(2,1,2), plot(w/pi, angle(h));
xlabel('Normalized Frequency');
ylabel('Phase in Radians');
title('Phase Response');
