% 7. Smoothing a signal using filters

clc;
n = 0:299;
x1 = cos(2*pi*10*n/256);
x2 = cos(2*pi*100*n/256);

x = x1 + x2;
% figure 

subplot(3,1,1);
plot(n,x);

xlabel('Time index n');
ylabel('Amplitude');
title('Input signal');

% compute the output sequences 
num1 = [0.5 0.27 0.77];
y1 = filter(num1,1,x); 
den2 = [1 -0.53 0.46];
num2 = [0.45 0.5 0.45];
y2 = filter(num2,den2,x);

% Plot the output sequence

subplot(3,1,2);
plot(n,y1);
axis([0 300 -2 2]);

ylabel('Amplitude');
title('Output of system no. 1'); grid;
subplot(3,1,3);
plot(n,y2);
axis([0 300 -2 2]);
ylabel('Amplitude');
title('Output of system no. 2'); grid;



