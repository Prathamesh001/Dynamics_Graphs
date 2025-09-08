clear all
zeeta_vals = [0.05,0.1, 0.2];
disp_name = {'Damping Ratio = 0.05', 'Damping Ratio = 0.1', 'Damping Ratio = 0.2'};
colors = {'white','green','cyan'};
u_0 = 1;
v = 0;
w = 1;

t = 0:0.01:30;

% Undamped displacement
for i = 1:3
    wd = w*sqrt(1-(zeeta_vals(i))^2);
    u0 = sqrt(u_0^2+((zeeta_vals(i)*w*u_0+v)/wd)^2);
    ud = exp(-zeeta_vals(i)*w*t).*(u_0*cos(wd*t)+((v+u_0*w*zeeta_vals(i))/wd)*sin(wd*t));
    plot(t, ud, 'DisplayName', string(disp_name(i)), 'Color',string(colors(i)) ...
        );
    hold on
end
u_crd = (u_0*(1+w*t)+v*t).*exp(-w*t);
plot(t, u_crd, 'y-', 'DisplayName', 'Damping Ratio = 1')
hold off
grid on;
title('Free Vibration of Critically and Subcritically Damped SDOF Systems all with Angular Frequency = 1 rad/sec');
xlabel('Time');
ylabel('Displacement');
legend;