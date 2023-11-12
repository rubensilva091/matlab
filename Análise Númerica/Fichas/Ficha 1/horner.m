function valpol = horner(a, u)
    n = length(a);
    valpol = a(1);
    for k = 2:n
        valpol = valpol .* u + a(k);
    end
end