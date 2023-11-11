%15

% Defina a matriz A (substitua com seus próprios valores)
A = [
    1 2 3;
    4 5 6;
    7 8 9;
];

% a) Usando a instrução for
[m, n] = size(A);  % Obtém o tamanho da matriz A
soma_colunas_for = zeros(1, n);

for j = 1:n
    soma_colunas_for(j) = sum(A(:, j));
end

disp('a) Soma de cada coluna usando a instrução for:');
disp(soma_colunas_for);

% b) Usando a função sum
soma_colunas_sum = sum(A);

disp('b) Soma de cada coluna usando a função sum:');
disp(soma_colunas_sum);