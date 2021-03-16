clear all
clc
close all

% Part 1
T = .001;
V_m = 1.0;
t = linspace(0,T,1001);
for n = 1:1001
    v(n) = V_m - (V_m / T) * t(n);
end
figure(1);
plot(t,v);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Time vs Voltage');
legend('v(t)= V_m - (V_m / T) * t');

% Part 2
t = linspace(-T,2*T,3001);
for n = 1:3001
    if (0 <= t(n) && t(n) <= T)
        v(n) = V_m - (V_m / T) * t(n);
    else
        v(n) = 0;
    end
end
figure(2);
plot(t,v);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Time vs Voltage');
legend('v(t)= V_m - (V_m / T) * t');

% Part 3
t = linspace(-T,2*T,3001);
for n = 1:3001
    v(n) = V_m - (V_m / T) * mod(t(n),T);
end
figure(3);
plot(t,v);
xlabel('Time (s)');
ylabel('Voltage (V)');
title('Time vs Voltage');
legend('v(t)= V_m - (V_m / T) * mod(t,T)');

//another one
