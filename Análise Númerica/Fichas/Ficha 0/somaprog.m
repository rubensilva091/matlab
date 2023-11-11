function s = somaprog(r, n)
    if nargin == 1
        n = 20; % Valor padrão para n se não for fornecido
    end
    
    % Criar um vetor de 0 até n
    expoentes = 0:n;
    
    % Calcular a soma da progressão geométrica
    s = sum(r .^ expoentes);
end