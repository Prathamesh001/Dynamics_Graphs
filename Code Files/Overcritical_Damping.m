
%%%
clear all
zeeta_vals = [1.2, 1.5, 2];
disp_name = {'Damping Ratio = 1.2', 'Damping Ratio = 1.5', 'Damping Ratio = 2'};
disp_name_ocr = {'Ocr Damping Ratio = 1.2', 'Ocr Damping Ratio = 1.5', 'Ocr Damping Ratio = 2'};
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
    wcap = w*sqrt((zeeta_vals(i)^2)-1);
    u_ocr = exp(-zeeta_vals(i)*w*t).*(u_0*cosh(wcap*t) + ((zeeta_vals(i)*w*u_0+v)/wcap)*sinh(wcap*t));
    plot(t, u_ocr, 'DisplayName', string(disp_name_ocr(i)))
    
end
u_crd = (u_0*(1+w*t)+v*t).*exp(-w*t);
plot(t, u_crd, 'y-', 'DisplayName', 'Damping Ratio = 1')
hold off
grid on;
title('Free Vibration of Critically and Subcritically Damped SDOF Systems all with Angular Frequency = 1 rad/sec');
xlabel('Time');
ylabel('Displacement');
legend;