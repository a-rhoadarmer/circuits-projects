%Part 1
x1 = linspace(-1, 2, 1000);
yval = pbola(x1);
yval2 = pbola(pbola(x1));
figure(1)
plot(x1, yval);
hold on;
plot(x1, yval2, '--');
hold off;
title('Pbola')
legend('pbola(x)', 'pbola(pbola(x))');
xlabel('x')
ylabel('y(x)')

%Part 2
x2 = linspace(0, 4, 1000);
y1 = fline(1, -2, x2, 0, 4);
y2 = fline(-1, 2, x2, 0, 4);
figure(2)
plot(x2, y1)
hold on;
plot(x2, y2, '--')
hold off;
title('Line')
legend('x - 2', '-x + 2')
xlabel('x')
ylabel('f(x)')

%Part 3
x3 = linspace(-3, 10, 1000);
y0 = funbola(-1, 2, 0, x3, 0, 1);
y2new = fline(-1, 2, x3, 1, 2);
y1new = fline(1, -2, x3, 2, 3);
yfin = funbola(-1, 6, -8, x3, 3, 4);
y3 = y0 + y2new + y1new + yfin;
figure(3) 
plot(x3, y3)
title('y_3(x)')
xlabel('x')
ylabel('y_3(x)')
axis([-1 5 -1 2])