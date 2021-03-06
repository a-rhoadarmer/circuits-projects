clear all;
close all;
clc;
x = 2;
y = x*3^x*exp(x);
v1 = [1 2 3 4];
v2 = [1; 2; 3; 4];
ans1 = v1*v2;
ans2 = v2*v1;
v = linspace(0,12,121);
R = 4.7e3;
i = v./R;
v89 = v(89);
i89 = i(89);
plot(v, i);
xlabel('Voltage');
ylabel('Current');
title('Voltage vs. Current');
legend('i = v/R');

