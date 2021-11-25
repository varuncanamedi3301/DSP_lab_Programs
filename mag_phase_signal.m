% 4 Finding the magnitude and phase spectrum of a given signal

clc;
clear all;
close all;

n1=0:79;
x=cos(2*pi*n1*150/8000);
%x=cos(2*pi*n1*250/4000);
%N=160; %N points for DFT 
N=80;
xk=fft(x,N); %computes DFT
%compute and plot amplitude spectrum

n=0:1:N-1;
subplot(3,1,1);
stem(n,abs(xk));
xlabel('k');
ylabel('lxkl');
title('Magnitude spectrum');

%phase spectrum
subplot(3,1,2);
stem(n,angle(xk));
xlabel('k');
ylabel('angle(xk)');
title('phase spectrum');

% original signal
subplot(3,1,3);
n1=0:1:length(x)-1;
stem(n1,x);  xlabel('n');
ylabel('x[n]'); title('original signal');
