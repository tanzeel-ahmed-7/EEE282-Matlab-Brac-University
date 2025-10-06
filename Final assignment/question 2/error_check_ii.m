clc; clear;

V_true = 3.6908;
V_est  = 3.6915;

abs_err = abs(V_true - V_est);
pct_err = (abs_err / V_true) * 100;

fprintf('absolute error = %.4f V\n', abs_err);
fprintf('percentage error = %.3f %%\n', pct_err);