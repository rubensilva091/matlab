%17

% Verificando se n é um número natural
if ~isnumeric(n) || n <= 0 || mod(n, 1) ~= 0
    error('Por favor, insira um número natural válido.');
end

% Calculando o número harmônico hn
hn = 0;
for i = 1:n
    hn = hn + 1/i;
end

% Exibindo o resultado
disp(['O número harmônico hn para n = ', num2str(n), ' é: ', num2str(hn)]);