// Exeperiment 8.1 Program to plot the unit step function (continous)

clear all;
clc;
close;

L = 10;
n = -L:L;
x = [zeros(1,L), ones(1,L+1)];
a = gca();
a.y_location = "middle";
plot2d2(n,x)
xtitle('Graphical representation of unit step signal', 't', 'x(t)');


// Exeperiment 8.2 Program to plot the unit step function (discrete)

clear all;
clc;
close;

L = 4;
n = -L:L;
x = [zeros(1,L), ones(1,L+1)];
a = gca();
a.thickness = 2;
a.y_location = "middle";
plot2d3('gnn',n,x)
xtitle('Graphical representation of unit step signal', 'n', 'x[n]');
