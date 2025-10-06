clc;
clear;

t_given = [0 0.25 0.50 0.75 1.00 1.25 1.50 1.75 2.00];

v_given = [1.0 2.5 0.8 -1.2 -2.0 -0.7 1.5 2.2 0.9];

t_corrected = 0:0.125:2.0;

v_corrected = interp1(t_given, v_given, t_corrected, 'spline');

disp('Corrected Table-1 Samples (with 0.125 ms step):');
disp(table(t_corrected', v_corrected', 'VariableNames', {'Time_ms','Voltage'}));

figure;
plot(t_given, v_given, 'ro-', 'LineWidth', 1.5); hold on;
plot(t_corrected, v_corrected, 'b.-');
xlabel('Time (ms)'); ylabel('Voltage');
legend('Original Samples','Corrected (Interpolated)');
title('Table-1 using polynomial pnterpolation');
grid on;