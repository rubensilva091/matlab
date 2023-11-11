%10
x = 1:10;
y = [3 1 5 6 8 2 9 4 8 0];

%a) Vetor com os elem. de x nas posições onde x > 5
a = x(x>5);

%b) Vetor com os elem. de y nas posições onde x <= 5
b = y(x<=4);

%c) Vetor com os elem. de x nas posições onde x < 2 OU x >= 8
c = x((x<2)|(x>=8));

%d) Vetor com os elem. de y nas posições onde x < 2 OU x >= 8
d = y((x<2)|(x>=8));

%e) Vetor com os elem. de y nas posições onde x < 2 E x < 8
e = y((x<2)&(x<8));

%f Vetor com os elem. de x nas posições onde y < 0
f = x(y<0);