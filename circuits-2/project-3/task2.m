t = -2:0.001:2
u1 = heaviside(t) %unit step function 

v0 = cos(2*pi*t).*u1
v1 = cos(2*pi*t + pi/4).*u1
v2  = cos(0.5*pi*t).*u1
v3 = v0.*v2
v4 = 5*exp(-2*t).*v0


figure(1);
ax1 = subplot(2,2,1);
plot(ax1,t,v0)
hold on
plot(ax1,t,v1)
hold off
xlabel(ax1 , 'Time (sec)');
title(ax1, 'v0(t) and v1(t)');
legend(ax1, 'v0(t)','v1(t)');

ax2 = subplot(2,2,2);
plot(ax2, t,v0)
hold on 
plot(ax2, t,v2)
hold off
xlabel(ax2 , 'Time (sec)');
title(ax2, 'v0(t) and v2(t)');
legend(ax2, 'v0(t)','v2(t)');

ax3 = subplot(2,2,3);
plot(ax3, t,v2)
hold on 
plot(ax3, t,v3)
hold off 
xlabel(ax3 , 'Time (sec)');
title(ax3, 'v2(t) and v3(t)');
legend(ax3, 'v2(t)','v3(t)');

ax4= subplot(2,2,4);
plot(ax4,t,v0)
hold on 
plot(ax4,t,v4)
hold off
xlabel(ax4 , 'Time (sec)');
title(ax4, 'v0(t) and v4(t)');
legend(ax4, 'v0(t)','v4(t)');
