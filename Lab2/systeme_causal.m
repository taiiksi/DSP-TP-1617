function y = systeme_causal (x,N)
  y = zeros(1,N-1); 
for i=2:N
    y(i) = (x(i) + x(i-1))/2;
end

end

