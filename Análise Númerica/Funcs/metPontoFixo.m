function [r,erro,niter]=metPontoFixo(g,x0,tol,maxit,imp)

% METPONTOFIXO Calcula uma aproxima��o para o ponto fixo de uma fun��o e
%              uma estimativa para o erro cometido.
%
% [r,erro,niter]=METPONTOFIXO(g,x0,tol,maxit,imp)
%       Calcula uma aproxima��o para um ponto fixo de g e uma estimativa
%       para o respetivo erro, usando o m�todo do Ponto Fixo.
%       A estimativa para o erro � o valor absoluto da diferen�a das duas
%       �ltimas aproxima��es obtidas.
%       O processo iterativo p�ra quando a estimativa do erro for inferior
%       a tol ou quando for atingido o n�mero m�ximo de itera��es permitido,
%       maxit.
% 
%    PAR�METROS DE ENTRADA:
%       g: uma fun��o (fun��o iterativa)
%       x0: um n�mero real (aproxima��o inicial)
%       tol: real positivo (toler�ncia para o erro). Por defeito, tol=1e-6.
%       maxit: inteiro positivo (n�mero m�ximo de itera��es a efetuar).
%              Por defeito, maxit=30.
%       imp:  se for igual a zero, n�o s�o visualizados resultados interm�dios.
%             Por defeito, imp=1, sendo, portanto, vista uma tabela de
%             resultados interm�dios.
%
%    PAR�METROS DE SA�DA:
%       r: aproxima��o para o ponto fixo de g (g(r)=r).
%       erro: estimativa para o erro.
%       niter: n�mero de itera��es efetuadas.
%
% A fun��o g deve ser especificada como uma fun��o an�nima ou atrav�s de
% uma function_handle

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   PAR�METROS  POR DEFEITO   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if (nargin<5), imp=1; end
if (nargin<4), maxit=30; end
if (nargin<3), tol=1e-6; end
if (nargin<2), error('Tem de introduzir a fun��o iterativa e a aproxima��o inicial!'); end
   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   VERIFICA��O DOS PAR�METROS DE ENTRADA   % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Verificar se maxit � inteiro positivo e se tol � positivo
if (length(maxit)~=1) || (fix(maxit) ~= maxit) || (maxit < 1)
    error('O par�metro maxit deve ser um inteiro positivo!'); 
elseif (length(tol)~=1) || (tol<=0)
    error('A toler�ncia para o erro deve ser um n�mero real positivo!')
end
if (~(imp==0))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   CABE�ALHO PARA TABELA DE RESULTADOS   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp(['  k ','     Aproxima��o   ','  Erro '])
disp('_________________________________________')
end

%%%%%%%%%%%%%%%%%%%%%%%%%%
%   PROCESSO ITERATIVO   % 
%%%%%%%%%%%%%%%%%%%%%%%%%%
niter=0;               % Inicializa o contador de itera��es
erro=tol+1;            % Inicializa o erro inicial (superior � toler�ncia)
while ( erro>tol && niter < maxit )
    r=g(x0);           % Calcula a nova aproxima��o
    erro=abs(r-x0);    % Calcula uma estimativa para o erro
    niter=niter+1;     % Incrementa o contador de itera��es
    
    % Impress�o dos resultados interm�dios
    if (~(imp==0))
    fprintf('%3.0f    %12.8g   %4.2e\n',niter,r,erro) 
    end
    
    x0=r;  % Armazena em x0 a �ltima aproxima��o     
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   MENSAGEM DE N�O CONVERG�NCIA   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if niter==maxit
        disp(' ')
        disp('Foi atingido o n�mero m�ximo de itera��es!')
end