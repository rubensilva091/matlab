%13

%b)
p = [2 -3 0 -1];
q = [1 0 0 1];

%i)
prod_pq = conv(p,q);                  % p * q
derivada_p = polyder(p);              % p'
substituir_p = polyval(p,5);          % p(5)
substituir_ps = polyval(p,[1 2 3]);   % [p(1), p(2), p(3)]

%ii)
zeros_p = roots(p);
zeros_q = roots(q);

% iii. Sobrepondo os gráficos de p e q no intervalo [-1, 1]
vetor = linspace(-1, 1, 1000); % Valores de x no intervalo [-1, 1]

% Calculando os valores correspondentes de p(x) e q(x)
p_res = polyval(p, vetor);
q_res = polyval(q, vetor);

% Plotando os gráficos
plot(vetor, p_res, 'r-', 'LineWidth',2);
hold on;
plot(vetor, q_res, 'b--', 'LineWidth', 2);
title('Sobreposição de p(x) e q(x)');
xlabel('x');
ylabel('y');
grid on;
