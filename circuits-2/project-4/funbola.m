function y = funbola(a2, a1, a0, x, start, stop)
for n = 1:length(x)
    if x(n) >= start && x(n) <= stop
        y(n) = a2.*x(n).^2 + a1.*x(n) + a0;
    else 
        y(n) = 0;
    end
end