% fs = 5;
% % t = linspace(0,1-1/fs,fs);
% f = 5;
% a = 2;
% y = a*sin(2*pi*t*f/fs);

% plot(stem(t, y));

T=1;
fi=1;
n =0:0.08:T;
X=sin(2*pi*fi*n);
stem(n,X);