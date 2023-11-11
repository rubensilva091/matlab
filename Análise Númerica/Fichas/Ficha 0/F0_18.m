%18

%a
% Testando com r = 0.5 e n = 10, 20, 100, 1000
r = 0.5;
n_values = [10, 20, 100, 1000];

for i = 1:length(n_values)
    n = n_values(i);
    resultado = somaprog(r, n);
    disp(['Para r = ', num2str(r), ' e n = ', num2str(n), ', a soma é: ', num2str(resultado)]);
end

%b
resultado = somaprog(0.5); % Neste caso, n será 20 por padrão
disp(['Resultado com n padrão: ', num2str(resultado)]);