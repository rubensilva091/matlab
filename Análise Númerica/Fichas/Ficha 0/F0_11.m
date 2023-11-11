%11

%a)
vetor = linspace(0,1,100);
a = plot(vetor,sin(2*pi*vetor));

%b)
b = fplot(@(x) sin(2*pi*x), [0, 1]);
