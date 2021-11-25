% 3. Circular time shift property of DFT

clc;
clear all;
close all;

x = [1 3 5 7 9];

N = length(x) - 1;
n = 0:N;

M = input('enter the shift: ');

if abs(M) > length(x)
    M = rem(M, length(X));
end

if M < 0
    M = M + length(x);
end

y = [x(M+1:length(x)) x(1:M)];
xf = fft(x);
yf = fft(y);

subplot(2,2,1),stem(n,abs(xf));
title('Magnitude of DFT of the Original Sequence');

subplot(2,2,2),stem(n,abs(yf));
title('Magnitude of DFT of the Circularly shifted Sequence');

subplot(2,2,3),stem(n,angle(xf));
title('Angle of DFT of the Original Sequence');

subplot(2,2,4),stem(n,angle(yf));
title('Angle of DFT of the Circularly shifted Sequence');






