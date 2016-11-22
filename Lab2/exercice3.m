% If the system is linear, then:  
% if y = f(x) then a*y = f(a*x) 
% if y1 = f(x1) and y2 = f(x2) then y1 + y2 = f(x1 + x2)


% This code proves that these properties work for:
% a = 3 
% x1 = xa, x2 = xb



xa = [ 0 0 0 0 1 2 3 4 5 0 0 0 0 0 0 0 0 0 0 ];
xb = [ 0 0 0 0 0 0 0 0 0 4 3 2 1 0 0 0 0 0 0 ];
xab = xa + xb;
xa3 = 3 * xa;


ya   = zeros(1, size(xa,2)-2);
yb   = zeros(1, size(xa,2)-2);
yab1 = zeros(1, size(xa,2)-2);
ya3  = zeros(1, size(xa,2)-2);

for i = 1:size(ya,2)
    
    ya(i)   = 3 * xa(i-1+1) - 2 * xa(i+1) + xa(i+1+1);
    yb(i)   = 3 * xb(i-1+1) - 2 * xb(i+1) + xb(i+1+1);
    yab1(i) = 3 * xab(i-1+1) - 2 * xab(i+1) + xab(i+1+1);
    ya3(i) = 3 * xa3(i-1+1) - 2 * xa3(i+1) + xa3(i+1+1);
end


 axis_x = zeros(1,size(xa,2));
    for i = 1:size(xa,2)
        axis_x(i) = i - 1;
    end 


axis_y = zeros(1,size(xa,2)-2);
    for i = 1:size(xa,2)-2
        axis_y(i) = i - 1;
    end
    
    
yab2 = ya + yb;    
  
figure;  
stem(axis_x, xa);
title('xa');
 
figure;  
stem(axis_x, xb);
title('xb');


figure;  
stem(axis_y, yab1);
title('y(xa + xb)');


figure;  
stem(axis_y, yab2);
title('y(xa) + y(xb)');



figure;  
stem(axis_y, ya3);
title('y(xa*3)');


figure;  
stem(axis_y, ya*3);
title('y(xa)*3');





% A system is invarient if y(x) with x shifted in the time by - T is equal to
% y(x) with y shifted in the time by - T. 

% Say T = 3. Then xa(t-T) = xaT is: 

% xa = [ 0 0 0 0 1 2 3 4 5 0 0 0 0 0 0 0 0 0 0 ];
 xaT = [ 0 0 0 0 0 0 0 1 2 3 4 5 0 0 0 0 0 0 0 ];



ya_xaT = zeros(1, size(xa,2)-2);
for i = 1:size(ya,2)
    ya_xaT(i) = 3 * xaT(i-1+1) - 2 * xaT(i+1) + xaT(i+1+1);
end



ya = zeros(1, size(xa,2)-2);



 xa = [ 0 0 0 0 1 2 3 4 5 0 0 0 0 0 0 0 0 0 0 ];
  
for i = 1:size(ya,2)  % I begin at t = t - 3.
    ya(i) = 3 * xa(i-1+1) - 2 * xa(i+1) + xa(i+1+1);
end


figure;  
stem(axis_y, ya_xaT);
title('y(xa(t-3))');


figure;  
stem(axis_y, ya);
title('y(xa(t))');

%We can see that y(xa(t-3)) = y(xa(t)) if y is shifted by 3, so this system
%is invarient. 



% Non linear system: y(x) = x^2(t)
% 3 * y(2) = 3 * 4 = 12     =!   y(3*2) = y(6) = 36
% y(2) + y(1) = 4 + 1 = 5   =!   y(2+1) = y(3) = 9


% Varient system: y(x) = t * x(t) 
% proof:

% Say T = 3. Then xa(t-T) = xaT is: 

% xa = [ 0 0 0 0 1 2 3 4 5 0 0 0 0 0 0 0 0 0 0 ];
 xaT = [ 0 0 0 0 0 0 0 1 2 3 4 5 0 0 0 0 0 0 0 ];


ya_xaT = zeros(1, size(xa,2)-2);
for i = 1:size(ya,2)
    ya_xaT(i) = i * xaT(i);
end



ya = zeros(1, size(xa,2)-2);
xa = [ 0 0 0 0 1 2 3 4 5 0 0 0 0 0 0 0 0 0 0 ];

  
for i = 1:size(ya,2)  % I begin at t = t - 3.
    ya(i) = i * xa(i);
end


figure;  
stem(axis_y, ya_xaT);
title('y(xa(t-3)) with y = t * x(t)');


figure;  
stem(axis_y, ya);
title('y(xa(t)) with y = t * x(t) ');

