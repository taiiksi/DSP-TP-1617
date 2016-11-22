
%Plot sin(2*pi*f*t), f = 1
f = 1;
t = [0:0.01:2*pi];
x_t = sin(2*pi*f*t);

figure;
plot(t,x_t);
title('sin(2.pi.f.t)');



%Plot sin(2*pi*f/fs*n), f = 1, fs = 20. 
%Sampling of sin(2*pi*f*t), with 20 points by period. 
n = [0:1:20];
fs = 20;
x_n = sin(2*pi*f/fs*n);



figure;
stem(x_n);
title('sin(2.pi.f/fs.n)');
