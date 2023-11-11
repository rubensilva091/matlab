function T = tridiagonal(n, c, d)
    % Verificando se n é um inteiro positivo
    if ~isnumeric(n) || ~isscalar(n) || n <= 0 || mod(n, 1) ~= 0
        error('n deve ser um inteiro positivo.');
    end
    
    % Inicializando a matriz tridiagonal com zeros
    T = zeros(n, n);
    
    % Preenchendo a diagonal principal com o valor d
    T(1:n+1:end) = d;
    
    % Preenchendo as diagonais acima e abaixo da principal com o valor c
    T(2:n+1:end) = c;
    T(n+1:n+1:end) = c;
end
