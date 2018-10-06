t = -5:0.001:5
u1 = heaviside(t) %unit step function 
u2 = heaviside(t-1);%unit step shifted by 1
u3 = heaviside(t-2); %unit step shifted by 2

figure(1);
ax1 = subplot(3,1,1);
plot(ax1, t, u1)
xlabel(ax1 , 'Time (sec)');
ylabel(ax1 ,'u1(t)');
title(ax1, 'u1(t)');

ax2 = subplot(3,1,2);
plot(ax2, t,u2)
xlabel(ax2, 'Time (sec)');
ylabel(ax2, 'u2(t)');
title(ax2, 'u2(t)');

ax3 = subplot(3,1,3);
plot(ax3, t,u2)
xlabel(ax3, 'Time (sec)');
ylabel(ax3, 'u3(t)');
title(ax3, 'u3(t)');

y1 = u1 - u2;
y2 = u1 + u2 + u3;
y3 = u1.*u3 ;
y4 = u1 + u2 - 2*u3; 

figure(2);
ax4 = subplot(2,2,1);
plot(ax4, t, y1)
xlabel(ax4 , 'Time (sec)');
ylabel(ax4 ,'y1(t)');
title(ax4, 'y1(t)');

ax5 = subplot(2,2,2);
plot(ax5, t, y2)
xlabel(ax5 , 'Time (sec)');
ylabel(ax5 ,'y2(t)');
title(ax5, 'y2(t)');

ax6 = subplot(2,2,3);
plot(ax6, t, y3)
xlabel(ax6 , 'Time (sec)');
ylabel(ax6 ,'y3(t)');
title(ax6, 'y3(t)');

ax7 = subplot(2,2,4);
plot(ax7, t, y4)
xlabel(ax7 , 'Time (sec)');
ylabel(ax7 ,'y4(t)');
title(ax7, 'y4(t)');
