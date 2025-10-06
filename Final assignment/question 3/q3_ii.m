clc; clear;

t = 0:0.125:1;  
v = [1, 2.354, 2.5, 1.846, 0.8, -0.27553, -1.2, -1.8314, -2];

h = (t(2) - t(1)) * 1e-3;   
C = 10e-6;                  

N = length(v);
dvdt = zeros(1, N);

dvdt(1) =(-3*v(1) + 4*v(2) - v(3)) / (2*h);

for k = 2:N-1
    dvdt(k) = (v(k+1) - v(k-1)) / (2*h);
end

dvdt(N) = (3*v(N) - 4*v(N-1) + v(N-2)) / (2*h);

ic = C * dvdt;

ic_mA = ic * 1000;

disp(table(t', ic_mA', 'VariableNames', {'Time_ms','iC_mA'}));