function valpol = horner(a, u)
    n = length(a);
    valpol = a(n);
    for k = n-1:-1:1
        valpol = valpol .* u + a(k);
    end
end