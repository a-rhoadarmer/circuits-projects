t = linspace(0, 50, 100000);
x1 = cos(2*pi.*t);
x2 = 0;
for n = 1:length(t)
    temp = ((-1).^(n-1))*(heaviside(t - 1 - 2*(n-1)) - heaviside(t - 2 - 2*(n-1)));
    x2 = x2 + temp;
end

figure(1)
plot(t, x1);
hold on 
plot(t, x2);
hold off

y = conv(x1, x2, 'same');
figure(2)
plot(t, y);
