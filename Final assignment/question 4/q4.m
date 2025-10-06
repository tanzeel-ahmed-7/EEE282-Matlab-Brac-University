clc; clear

t_data = [0 0.25 0.50 0.75 1.00];
v_data = [0 2.696 3.939 4.511 4.775];


P = lagrange_polynomial(t_data, v_data);


f = @(t) polyval(P, t) - 4;

t_root = bisection(f, 0.5, 0.75, 1e-6, 100);

fprintf('the voltage crosses 4.0 V at t = %.6f ms\n', t_root);