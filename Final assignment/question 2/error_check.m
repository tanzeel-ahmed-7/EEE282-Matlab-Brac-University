clc; clear;

V_true = 3.6908;
V_approx = 1.7221;

error_abs = abs(V_true - V_approx);
error_percent = (error_abs / V_true) * 100;

fprintf('absolute error = %.4f V\n', error_abs);
fprintf('percentage error = %.2f %%\n', error_percent);


