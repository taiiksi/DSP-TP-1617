function y = systeme_notcausal(x,N)
  y = zeros(1,N-1); 
for i=1:N-1
    y(i) = (x(i) + x(i+1))/2;
end

end

    