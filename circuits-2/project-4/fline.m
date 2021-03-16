function y = fline(h, q, x, start, stop)
for n = 1:length(x)
    if x(n) >= start && x(n) <= stop
        y(n) = h.*x(n) + q;
    else 
        y(n) = 0;
    end
end

//vscode push

