
beeta = 0:0.01:3;
zeeta = [ 1, 0.707, 0.5, 0.25, 0.15, 0.1, 0];
Rd_legends = {'Damping Ratio = 1', 'Damping Ratio = 0.707', 'Damping Ratio = 0.5', 'Damping Ratio = 0.25', 'Damping Ratio = 0.15', 'Damping Ratio = 0.1', 'Damping Ratio = 0'};
theta_legends = {'Damping Ratio = 1', 'Damping Ratio = 0.707', 'Damping Ratio = 0.5', 'Damping Ratio = 0.25', 'Damping Ratio = 0.15', 'Damping Ratio = 0.1', 'Damping Ratio = 0'};

Rd = @(zeeta, beeta) 1./(sqrt((1-beeta.^2).^2 + (2*zeeta.*beeta).^2));
theta = @(zeeta, beeta) acos((1-(beeta.^2))./sqrt((1-beeta.^2).^2 +(2*zeeta*beeta).^2));

% subplot(2,1,1);
% for i = 1: length(zeeta)
%     plot(beeta, Rd(zeeta(i), beeta), 'DisplayName', string(Rd_legends(i)))
%     hold on
% end
% hold off
% legend('Location', 'northeastoutside');
% legend;
% title('Variation of Dynamic Amplification Factor with respect to Ratio of Frequencies')
% ylabel('Dynamic Amplicfication Factor ($R_d$)', 'Interpreter', 'Latex');
% xlabel('Frequency Ratio ($\beta$)', 'Interpreter', 'Latex');
% ylim([0,4])
% pbaspect([6 8 1]);
% subplot(2,1,2)
for i = 1: length(zeeta)
    plot(beeta, theta(zeeta(i), beeta), 'DisplayName', string(theta_legends(i)))
    hold on
end
hold off
legend;
ylabel('Phase lag $\theta$ (rad)', 'Interpreter','latex');
xlabel('Frequency Ratio $\beta = \frac{{\omega}_{forcing}}{{\omega}_{natural}}$','Interpreter','latex');
ylim([0,pi]);
pbaspect([1 0.6666 1]);


