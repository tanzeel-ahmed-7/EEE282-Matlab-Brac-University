clc; clear;

t = 0:0.125:1;
v = [1 2.354 2.5 1.846 0.8 -0.27553 -1.2 -1.8314 -2];

y = v.^2;

I = simpson13(t, y);

T = t(end) - t(1);
Vrms = sqrt(I / T);

fprintf('RMS (0–1 ms) using simpson 1/3 = %.4f V\n', Vrms);


