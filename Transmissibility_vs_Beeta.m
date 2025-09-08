clear all
clc
beeta = 0:0.01:5;
Zeeta_vals = [0, 0.1, 0.15, 0.25, 0.5, 0.707, 1];
Disp_names = {'Damping Ratio = 0', 'Damping Ratio = 0.1', 'Damping Ratio = 0.15', 'Damping Ratio = 0.25', 'Damping Ratio = 0.5', 'Damping Ratio = 0.707', 'Damping Ratio = 1'};
for i = 1:length(Zeeta_vals)
    Rd = 1./sqrt((1-beeta.^2).^2 + (2*Zeeta_vals(i)*beeta).^2);
    TR = Rd.*sqrt(1+(2*Zeeta_vals(i)*beeta).^2);
    plot(beeta, TR, 'DisplayName', string(Disp_names(i)));
    hold on
end
legend;
title('Transmissibility as a Function of Frequency Ratio and Damping Ratio');
xlabel('Frequency Ratio $\beta = \frac{{\omega}_{forcing}}{{\omega}_{natural}}$', 'Interpreter','latex');
ylabel('Transmissibility $TR = \frac{f_{max}}{p_0}$', 'Interpreter','latex');
ylim([0,4]);
pbaspect([1 1.2 1])
grid on
hold off