zeeta = 0.04;
u_0 = 1;
v = 1;
w = 1;
wd = w*sqrt(1-zeeta^2);
t = 0:0.01:30;
u0 = sqrt(u_0^2+((zeeta*w*u_0+v)/wd)^2);
% Undamped displacement
u = u_0*cos(w*t)+(v/w)*sin(w*t);
plot(t, u, 'b-')
grid on
hold on
ud = exp(-zeeta*w*t).*(u_0*cos(wd*t)+((v+u_0*w*zeeta)/wd)*sin(wd*t));
plot(t, ud, 'w-');
xlabel('Time');
ylabel('Displacement');
title('Free Response of a Damped and Undamped System');

u_crd = (u_0*(1+w*t)+v*t).*exp(-w*t);
plot(t, u_crd, 'y-')
%Decay curve
decay_line = u0*exp(-zeeta*w*t);
plot(t, decay_line, 'r--');
decay_line_down = -u0*exp(-zeeta*w*t);
plot(t, decay_line_down, 'r--');
legend('Undamped Free Response', 'Underdamped Free Response','Critically Damped Response', 'Decay curve');
hold off