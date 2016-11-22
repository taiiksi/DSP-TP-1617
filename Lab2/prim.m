function y = prim(x)

N = size(x,1);
y = zeros(1,N);
acc_x = 0;


for i=1:N
    
   acc_x = acc_x + x(i);
   y(i) = acc_x;
  
   
end 
