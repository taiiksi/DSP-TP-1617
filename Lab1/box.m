function x = box(n, N, a)


if nargin < 2
   N = 20;
end
if nargin < 1
   n = 0;
end


if n > N - 1
    disp('error, n should be inferior or equal to N - 1');

elseif n < 0
    disp('error, n should be superior or equal to 0');
    
else
    
    
    array = zeros(N,1);
  
    
    for j = (n + 1) - a : (n + 1) + a
        array(j) =   1 ; % matlab index begin to 0
    end
    
    
    
    
    x = array;
    
    axis = zeros(N,1);
    for i = 1:N
        axis(i) = i - 1;
    end
    
   
    plot(axis,array, 'o');
   
     
end
   
     xlabel('n');
     ylabel('x[n]');
    
     title('Box function');
end





   