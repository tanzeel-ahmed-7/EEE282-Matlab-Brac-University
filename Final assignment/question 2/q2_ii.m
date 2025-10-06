clc; clear;

t_given = [0 0.25 0.50 0.75 1.00];         
v_given = [0 2.696 3.939 4.511 4.775];


P = lagrange_polynomial(t_given, v_given);


t = 0:0.001:1.0;           
v = polyval(P, t);


I = simpson13(t, v.^2);    


T = t(end) - t(1);
Vrms_eq = sqrt(I / T);

fprintf('RMS from polynomial, simpson 1/3) = %.4f V\n', Vrms_eq);