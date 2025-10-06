function P = lagrange_polynomial(x, y)
n = length(x);
P = 0;

for k = 1:n
 
    Lk = y(k);

    for j = 1:n
        if j ~= k
          
            Lk = conv(Lk, poly(x(j))) / (x(k) - x(j));
        end
    end

    P = P + Lk;
end
end