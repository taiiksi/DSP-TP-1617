N = 20; 
x = step(4,N);
y = prim(x);


axis = zeros(1,N);
    for i = 1:N
        axis(i) = i - 1;
    end
    
    
    
    
figure;
stem(axis, x);
title('x = H (shifted at t = 4) ');
    
    
figure;
stem(axis, y);
title('y = prim(x), x is the step shifted function');



% The input signal is bounded and stable but the output signal is not
% bounded, so the primative operator is not stable.


%Impulse response of the primitive operator:
x = diract(4,N);
y = prim(x);
stem(axis, y);
title('y = prim(x), x is the diract shifted function');






%Creation of the system: y(k) = x(k) + 2*y(k-1)

x = step(4,N);

y = zeros(1);
y(1) = x(1);
for i = 2:N
    y(i) = x(i) + 2 * y(i-1);
end

figure;
stem(axis, y);
title('y(k) = x(k) + 2*y(k-1), x = H shifted');

% The input signal is bounded and stable but the output signal is not
% bounded, so this system is not stable.




%Creation of the system: y(k) = x(k) + y(k-1)/3

x = step(4,N);

y = zeros(1);
y(1) = x(1);
for i = 2:N
    y(i) = x(i) + y(i-1)/3;
end

figure;
stem(axis, y);
title('y(k) = x(k) + y(k-1)/3, x = H shifted');

% The input signal is bounded and stable but the output signal is 
% bounded, so this system is stable.


