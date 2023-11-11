%16
% a) Versão vetorizada
clear;
tic;
n = 10000;
i = 1:n;
b_vectorized = sqrt(i);
t_vectorized = toc;

disp(['a) Tempo de execução da versão vetorizada: ', num2str(t_vectorized)]);

% b) Comparação de tempo
tic;
for i = 1:10000
    b(i) = sqrt(i);
end
t_for_loop = toc;

disp(['b) Tempo de execução da versão com loop FOR: ', num2str(t_for_loop)]);

% Verificação se os resultados são iguais
disp(['Os resultados são iguais? ', num2str(isequal(b, b_vectorized))]);
