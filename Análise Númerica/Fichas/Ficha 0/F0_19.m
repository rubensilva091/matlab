%19

%a) 
% O algoritmo dado faz uso de adições/subtrações e multiplicações. 
% O número total de adições/subtrações é "n−1" 
% e o número total de multiplicações/divisões também é "n−1"

%b)
% O algoritmo de Horner requer n−1 adições/subtrações 
% e n−1 multiplicações.

%c,d,e)

% Definindo o polinômio p(x) = 5x^3 + 7x^2 - 2x + 1
a = [5, 7, -2, 1];

% Testando a função horner com o vetor [-1, 2, 3]
resultados = horner_vectorized(a, [-1, 2, 3]);

% Exibindo os resultados
disp('Resultados para p([-1, 2, 3]):');
disp(resultados);
