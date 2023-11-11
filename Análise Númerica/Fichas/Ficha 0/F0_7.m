%7
m = [2 7 9 0;3 0 5 6;8 2 0 5];

%a) linha 1, colunas 2 e 3
a = m(1,[2,3]);

%b) todas as linhas, colunas 1 e 4
b = m(:,[1,4]);

%c) linha 2 e todas as colunas
c=m(2,:);

%d) substituir todas as colunas da linha 2 por 5
d = m;
d(2,:)=5;

%e) guardar a linha 1 na nova var
e=m(1,:);

%f) guardar a matriz sem a linha de cima
f=m;
f(1,:)=[];

%g) guarda a coluna 2 por cada linha
g=m(:,[2 2 2]);

%h) igual a "g", repmat(MATRIZ, Rep. Verticais, Rep. Horizontais)
h=repmat(m(:,2),1,3);

%i) soma todas as linhas por cada coluna
i = sum(m);

%j) soma de todas as linhas da matriz transposta
j = sum(m');

%k) igual a j
k=sum(m,2);

%l) as pos. dos membros da matriz, (coluna -> linha)
l=m(4:9);

%m) membro 11 seguindo a lógica de cima
m1 = m(11);

%n) ind2sub guarda nas variaveis a linha e a coluna da pos. 11
[linha_n,coluna_n]=ind2sub(size(m),11);

%o) retorna uma matriz vertical com os indices de m
o=find(m);

%p) retorna 2 matrizes verticais com os indices de m
[linha_p,coluna_p]=find(m);

%q) inverte as ordem das linhas da matriz
q=flipud(m);

%r) Roda a matriz 90 graus sentido horario
r = rot90(m);