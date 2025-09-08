beeta = 0:0.01:3;
Rd = [];
for i = 1:length(beeta)
    Rd = [Rd, 1/abs(1-beeta(i)^2)];
end
% subplot(2,1,1);
plot(beeta,Rd)
ylim([0,6]);
ylabel('$R_d = \frac{1}{|1-\beta^2|}$', 'Interpreter', 'latex')
xlabel('$\beta = \frac{\omega_{focing}}{\omega_{natural}}$', 'Interpreter', 'latex')
% subplot(2,1,2);
title('Variation of Dynamic Amplification Factor as a Function of Frequency Ratio')
grid on;
