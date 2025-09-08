clear all
clc
zeeta = 0:0.01:1;
wd_w = sqrt(1- zeeta.^2);
plot(zeeta, wd_w)
xlabel('Damping Ratio')
ylabel('Ratio of Damped Angular Frequency to Natural Angular Frequency')
title('Relationship between Damping Ratio and Frequencies')
grid on;
% Set the data aspect ratio to [x_unit y_unit z_unit]
daspect([1 1 1]); % Equal data unit lengths along all axes (e.g., for a circle to appear as a circle)