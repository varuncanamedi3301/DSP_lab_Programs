x = (128:-1:1);
y = fft(x);
y1 = sum(x.*x);
y2 = length(x); y3 = abs(y);
y4 = [sum(y3.*y3)]/y2;
y5 = y1 - y4;
disp('Energy in time:'); disp(y1);
disp('Energy in Frequency:');
disp(y4);
disp('error'); disp(y5);