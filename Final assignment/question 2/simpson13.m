function I = simpson13(x, y)
% Composite Simpson’s 1/3 Rule
n = length(x) - 1;
h = x(2) - x(1);

if mod(n,2) ~= 0
    error('n must be even for Simpson’s 1/3 rule');
end

I = y(1) + y(end) + ...
    4*sum(y(2:2:n)) + ...
    2*sum(y(3:2:n-1));

I = (h/3) * I;
end