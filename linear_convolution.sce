// Experiment 11 Program to find the linear convolution of two given sequence

clear all;
clc;
x = [1,2,1,1]
N1 = length(x);
h = [1,1,2,1]
N2 = length(h);
N = N1+N2-1;
y=zeros(1,N);

// METHOD 1

for i = N1+1:N
    h(i) = 0;
end
for i = N2+1:N
    x(i) = 0;
end
for n = 1:N
    for k = 1:N
        if(n>=k)
            y(n) = y(n)+x(n-k+1)*h(k);
        end
    end
end

disp(y,'Linear convulution Result in method1 is = ');

// Method 2

y2 = convol(x,h);

disp(y2,'Linear convulution Result in method2 is = ');

subplot(221)
plot2d3(x);
xtitle('Sequence 1','n', 'x(n)');

subplot(222)
plot2d3(h);
xtitle('Sequence 2','n', 'h(n)');

subplot(223)
plot2d3(y);
xtitle('Convolution of 2 signals','n', 'y(n)');


