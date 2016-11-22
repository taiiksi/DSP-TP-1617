

%% Observation:


figure(1);
subplot(2,1,1),
N = 100;
x = randn(1,N);
hist(x);

subplot(2,1,2),
x = [-3:.1:3];
norm = normpdf(x,0,1);
plot(x,norm);
title('Normal Distribution with N = 100');


figure(2);
subplot(2,1,1);
N = 100000;
x = randn(1,N);
hist(x);

subplot(2,1,2),
x = [-3:.1:3];
norm = normpdf(x,0,1);
plot(x,norm);
title('Normal Distribution with N = 100000');



figure(3);
subplot(2,1,1);
N = 100;
x = rand(1,N);
hist(x);

subplot(2,1,2),
pd1 = makedist('Uniform');
x = [-3:.1:3];
pdf1 = pdf(pd1,x);
plot(pdf1,norm);
title('Uniform distribution with N = 100');


figure(4);
subplot(2,1,1);
N = 10000;
x = rand(1,N);
hist(x);

subplot(2,1,2),
pd1 = makedist('Uniform');
x = [-3:.1:3];
pdf1 = pdf(pd1,x);
plot(pdf1,norm);
title('Uniform distribution with N = 100000');




%% Autocorrelation



N = 1000;
xnorm = randn(1,N);
xunif = rand(1,N);

 figure(5);
 autocorr(xnorm)
 title('Autocorrelation of Normal Distribution');
 figure(6);
 autocorr(xunif)
 title('Autocorrelation of Uniform Distribution');
 
 % These signals are white noise because it's a random distribution with a mean
 % and a variance. 
 % The autocorrelation of white noises have a big peak at Lag = 0 equal to 1;
 
  
 
 
 
 %% Cross-Correlation:
 
 
 s1 = round(rand(1,50));  %Uniform distribution, rand(0.2) =0, rand(0.7) = 1;
 s2 = round(rand(1,50));  
 s3 = round(rand(1,50));  
 
 figure(7);
 subplot(2,2,1);
 [r1,lag1] = xcorr(s1, s2);
 plot(lag1, r1);
  title('Cross-Correlation of s1, s2');

 
 subplot(2,2,2);
 [r2,lag2]  = xcorr(s1, s3);
 plot(lag2, r2);
 title('Cross-Correlation of s1, s3');

 subplot(2,2,3);
 [r3,lag3]  = xcorr(s2, s3);
 plot(lag3, r3);
 title('Cross-Correlation of s2, s3');
 
 
 % Cross-Correlation of white noises: maximum at Lag = 0, then decrease. 
