function [r,erro,niter]=metNewtonRaphson(f,fder,x0,tol,maxit,imp)

% METNEWTONRAPHSON Calcula uma aproxima��o para um zero de uma fun��o e
%           uma estimativa para o erro cometido, usando o m�todo de Newton-Raphson.
%
% [r,erro,niter]=METNEWTONRAPHSON(f,fder,x0,tol,maxit,imp)
%       Calcula uma aproxima��o para um zero de f e uma estimativa
%       para o respetivo erro, usando o m�todo de Newton-Raphson.
%       A estimativa para o erro � o valor absoluto da diferen�a das duas
%       �ltimas aproxima��es obtidas.
%       O processo iterativo p�ra quando a estimativa do erro for inferior
%       a tol ou quando for atingido o n�mero m�ximo de itera��es permitido
%       (maxit).
% 
%    PAR�METROS DE ENTRADA:
%       f: uma fun��o (cujo zero se pretende aproximar)
%       fder: uma fun��o (derivada da fun��o f)
%       x0: um n�mero real (aproxima��o inicial)
%       tol: real positivo (toler�ncia para o erro). Por defeito, tol=1e-6.
%       maxit: inteiro positivo (n�mero m�ximo de itera��es a efetuar).
%              Por defeito, maxit=30.
%       imp:  se for igual a zero, n�o s�o visualizados resultados interm�dios.
%             Por defeito, imp=1, sendo, portanto, vista uma tabela de
%             resultados interm�dios.
%
%    PAR�METROS DE SA�DA:
%       r: aproxima��o para um zero de f
%       erro: estimativa para o erro
%       niter: n�mero de itera��es efetuadas
%
% As fun��es f e fder devem ser especificadas como fun��es an�nimas ou 
% atrav�s de function_handle

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   PAR�METROS  POR DEFEITO   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if (nargin<6), imp=1; end
if (nargin<5), maxit=30; end
if (nargin<4), tol=1e-6; end
if (nargin<3), error('Tem de introduzir a fun��o, a sua derivada e uma aproxima��o inicial!'); end
   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   VERIFICA��O DOS PAR�METROS DE ENTRADA   % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Verificar se maxit � inteiro positivo e se tol � positivo
if (length(maxit)~=1) || (fix(maxit) ~= maxit) || (maxit < 1)
    error('maxit deve ser um inteiro positivo!'); 
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
    f0=f(x0);
    fder0=fder(x0);
    r=x0-f0/fder0;     % Calcula a nova aproxima��o
    erro=abs(r-x0);    % Calcula uma estimativa para o erro
    niter=niter+1;     % Incrementa o contador de itera��es
    
    % Impress�o dos resultados interm�dios
    if (~(imp==0))
    fprintf('%3.0f    %12.8g   %4.2e\n',niter,r,erro) 
    end
    
    x0=r;     % Armazena em x0 a �ltima aproxima��o     
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   MENSAGEM DE N�O CONVERG�NCIA   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if niter==maxit
        disp(' ')
        disp('Foi atingido o n�mero m�ximo de itera��es!')
end