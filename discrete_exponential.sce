// Experiment 10 Plot a discrete exponentially decreasing sequence a< 1

clear all;
clc;
a=0.5;
n=0:10;

x=(a)^n;
a = gca()
a.thickness = 2;
a
a.y_location = "origin";
a.x_location = "origin";
subplot(211)
plot2d3('gnn',n,x)
xtitle('Graphical representation of exponential decreasing signal (discrete)', 'n', 'x[n]');

subplot(212)
//a = gce()
plot(n,x)
xtitle('Graphical representation of exponential decreasing signal (continous)', 't', 'x(t)');



// Experiment 10 Plot a discrete exponentially increasing sequence a > 1

clear all;
clc;
a=1.5;
n=0:10;

x=(a)^n;
a = gca()
a.thickness = 2;
a.y_location = "origin";
a.x_location = "origin";
subplot(211)
plot2d3('gnn',n,x)
xtitle('Graphical representation of exponential increasing signal (discrete)', 'n', 'x[n]');

subplot(212)
plot(n,x)
xtitle('Graphical representation of exponential increasing signal (continous)', 't', 'x(t)');


