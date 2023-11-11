function r=metBisseccao(f,a,b,tol)

% METBISSECCAO Determina uma aproxima��o para um zero de uma fun��o usando o m�todo da bissec��o.
%
% r=METBISSECCAO(f,a,b,tol) Determina uma aproxima��o para um zero de f no intervalo [a,b].
%
%      PAR�METROS DE ENTRADA:
%          f: fun��o da qual se pretende saber o zero
%          a: extremo esquerdo do intervalo inicial (onde est� o zero de f)
%          b: extremo direito do intervalo inicial (onde est� o zero de f)
%          tol: toler�ncia para o erro na aproxima��o. Por defeito
%               tol=1e-4.
%
%      PAR�METROS DE SA�DA:
%          r: aproxima��o para o zero de f
%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  TOLER�NCIA POR DEFEITO   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if nargin<4, tol=1e-4; end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  VERIFICA��O DOS PAR�METROS DE ENTRADA  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if a>=b
    error('a deve ser menor que b!')
end
fa=f(a);
fb=f(b);
if fa*fb>=0 
    error('O intervalo inicial n�o foi uma escolha adequada!')
elseif length(tol)~=1 || tol<=0
    error('A toler�ncia para o erro deve ser um n�mero real positivo!')
end

%%%%%%%%%%%%%%%%%%%%%%%%%
%  M�TODO DA BISSEC��O  %
%%%%%%%%%%%%%%%%%%%%%%%%%

disp([' k ','       a_k    ', '     b_k    ',  '     x_k     ','    Erro    '])
disp('-----------------------------------------------------')
k=0;
erro=tol+1;
while erro>tol 
    r=(a+b)/2;
    erro=(b-a)/2;
    fprintf('%2.0f    %10.6f  %10.6f  %10.6f  %10.2e\n',k,a,b,r,erro)
    fr=f(r);
    if fa*fr<0
        b=r;
        fb=fr;
    elseif fa*fr>0
        a=r;
        fa=fr;      
    else 
        disp('Foi encontrada uma raiz para a equa��o!')
        return
    end
    k=k+1;
end
