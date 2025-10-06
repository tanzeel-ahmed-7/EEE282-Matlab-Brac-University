function root = bisection(func, a, b, tol, maxIter)

if func(a)*func(b) > 0
    error('No sign change in the interval');
end

for k = 1:maxIter
    c = (a+b)/2;
    if abs(func(c)) < tol || (b-a)/2 < tol
        root = c;
        return
    end
    if func(a)*func(c) < 0
        b = c;
    else
        a = c;
    end
end
root = (a+b)/2;
end