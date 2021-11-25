x1 = [1 2 3 4];
x2 = [1 2 3 4];
N = max(length(x1), length(x2));
% obtain DFT's
X1 = fft(x1, N);
X2 = fft(x2, N);
% perform vector multiplication
y = X1.*X2;
% ifft to get y[n]
yn = ifft(y, N);
disp('circular convolution of x1 and x2 is yn = ');
disp(yn);
%plot 
stem(yn);
title('Circular convolution output y(n)');