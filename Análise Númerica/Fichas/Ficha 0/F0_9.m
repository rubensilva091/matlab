%9
x=[1 5 2 8 9 0 1];
y=[5 2 2 6 0 0 2];

%a) vetor lógico com a verifacação de maior
a = x>y;

%b) vetor lógico com a verifacação de igualdade
b = x == y;

%c) vetor lógico com a verifacação de menor ou igual
c = x <= y;

%d) vetor lógico com a verifacação bit a bit de "ou"
d = x | y;

%e) vetor lógico com a verifacação bit a bit de "e"
e = x&y;

%f) vetor lógico com a verifacação bit a bit de "e"
f = x&(~y);

%g) vetor lógico (com lei de morgan) com a verifacação bit a bit de "e"
g = ~(x&y);

%h) vetor lógico com a verifacação bit a bit de "ou"
h = (~x)|(~y);
