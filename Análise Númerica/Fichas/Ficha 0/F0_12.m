%12
%a)
f = @(x) (x.^2 .* sin(x)/(2*pi));
g = @(x) (pi.^2 .* cos(x));

%b)

% Criando um vetor de inteiros no intervalo [-4, 4]
vetor = -4:4;

% Calculando os valores de f e g para os inteiros em x_integers
f_calculado = f(vetor);
g_calculado = g(vetor);

% Exibindo a tabela de valores
fprintf('x\t\tf(x)\t\t\tg(x)\n');
fprintf('----------------------------------------\n');
for i = 1:length(vetor)
    fprintf('%d\t\t%f\t\t%f\n', vetor(i), f_calculado(i), g_calculado(i));
end

%c
% Gráfico da função f
plot(vetor, f(vetor), 'b-', 'LineWidth', 2, 'DisplayName', 'f(x)');
hold on;

% Gráfico da função g
plot(vetor, g(vetor), 'r--', 'LineWidth', 2, 'DisplayName', 'g(x)');

% Adicione legenda e título
legend('show');
title('Gráfico das funções f(x) e g(x)');
xlabel('x');
ylabel('y');

% Exiba a grade
grid on;

% Mostre a figura
hold off;