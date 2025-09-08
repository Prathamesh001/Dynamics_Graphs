un_unm = 2;
zeeta = 0:0.001:0.2;
m = [];
for i = 1: length(zeeta)
m = [m,(log(un_unm))/(2*pi*zeeta(i))];
end
plot(zeeta, m);
ylim([0,8])
xlim([0,0.2])
ylabel('Cyles required for Half Amplitude')
xlabel('Damping Ratio')
title('No. of Cycles required for Halving the Amplitude')
grid on;