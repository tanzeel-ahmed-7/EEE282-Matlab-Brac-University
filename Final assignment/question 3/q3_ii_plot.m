clc; clear

t = [0 0.125 0.25 0.375 0.5 0.625 0.75 0.875 1.0];  
v = [1 2.354 2.5 1.846 0.8 -0.27553 -1.2 -1.8314 -2];


h = (t(2) - t(1)) * 1e-3;   
C = 10e-6;                 

N = length(v);
dvdt = zeros(1,N);

dvdt(1) = (-3*v(1) + 4*v(2) - v(3)) / (2*h);


for k = 2:N-1
    dvdt(k) = (v(k+1) - v(k-1)) / (2*h);
end


dvdt(N) = (3*v(N) - 4*v(N-1) + v(N-2)) / (2*h);


ic_num = (C * dvdt) * 1000;


ic_true = [155 105.207 71.409 48.469 32.898 22.330 15.156 10.287 6.983];


figure;
plot(t, ic_true, 'ro-', 'LineWidth', 1.5, 'MarkerSize', 6); hold on;
plot(t, ic_num, 'bs--', 'LineWidth', 1.5, 'MarkerSize', 6);
xlabel('time (ms)');
ylabel('current i_c (mA)');
legend('True Current (Table-3)', 'numerical current (from T=table-2)', 'Location', 'northeast');
title('comparison of true vs calculated capacitor current');
grid on;