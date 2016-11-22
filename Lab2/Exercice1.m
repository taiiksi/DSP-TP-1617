
%H function = Heaviside function = unit step function at t = 0. 

N = 20; 
x = step(4,N);
y = systeme_notcausal(x,N);


axis_x = zeros(1,N);
    for i = 1:N
        axis_x(i) = i - 1;
    end
    


axis_y = zeros(1,N-1);
    for i = 1:N-1
        axis_y(i) = i - 1;
    end
    
    
    

   
    
figure;
stem(axis_x, x, 'o');
title('x = H (shifted at t = 4) ');
    
    
figure;
stem(axis_y, y, 'o');
title('y = system-notcausal(x)');


% The signal in output begin at t = 3, but the signal in input begin at 
% t = 4; so the system is not causal. 


% To get a causal system, this system must be independent from the
% future. Exemple of causal system: 


y2 = systeme_causal(x,N);  
    
axis_y2 = zeros(1,N-1);
    for i = 2:N
        axis_y2(i) = i - 1;
    end
    
    
figure;
stem(axis_y2, y2, 'o');
title('y2 = system-causal(x)');


