// Exeperiment 9.1 Program to plot the unit ramp function (discrete)
clear all;
clc;
close;

L = 10;
n = 0:L;
x = [0:L];

a = gca();
a.y_location = "left";
plot2d3('gnn',n,x)
xtitle('Graphical representation of unit ramp signal', 'n', 'x[n]');


// Exeperiment 9.2 Program to plot the unit ramp function (continous)
clear all;
clc;
close;

L = 10;
n = 0:L;
x = [0:L];

a = gce();
a.y_location = "left";
a.children(1),thickness = 2
plot(n,x)
xtitle('Graphical representation of unit ramp signal', 't', 'x(t)');
