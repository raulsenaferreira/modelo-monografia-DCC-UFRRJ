% LAPLACE.M Programa para a solução do laplaciano sobre uma regiao 
% retangular com n pontos na direcao x e m pontos na direcao y. 
% Metodo das diferencas finitas - MDF
clear; 
% Numero de linhas e colunas 
m = input('Digite o numero de linhas '); 
n = input('Digite o numero de colunas '); 
%%%
%%% Mantando a Matriz do sistema  
%%%
%%% Bloco diagonal
%%%
A = zeros(n,m); 
nl1 = n - 1; 
np1 = n + 1; 
msize = n*m; 
msln = msize - n;
%%%
%%% As três diagonais: Diagonal principal, acima e abaixo
%%%
A(1,1) = -4.0; %%% Primeiro valor da diagonal principal
for i = 2:msize 
 A(i-1,i) = 1.0;  %%% Abaixo
 A(i,i)   =-4.0;  %%% Valores da diagonal principal
 A(i,i-1) = 1.0;  %%% Aciima
end 
% Correção: Substituindo alguns valores 1 por 0 
for i = n:n:msln 
 A(i,i+1) = 0.0; 
 A(i+1,i) = 0.0; 
end 
%%% 
%%% Diagonais afastadas
%%%
for i = np1:msize 
 A(i,i-n) = 1.0; 
 A(i-n,i) = 1.0; 
end
%%%
%%% Montando o lado direito do sistema (inclui os valores de fronteira) 
%%%
b=zeros(msize,1);
%%% Atualiza os valores não nulos
for i = n:n:msize 
   b(i,1) = -100; 
end
% Solucao do sistema linear. 
u = A\b 
%%%
%%% O que está abaixo não sei se é necessário, veja isso, se for inútil
%%% delete.
%%%
%%% Faça o gráfico da solução e veja se o gráfico satisfaz as condições de
%%% contorno.
% Ordenamento matricial dos valores de temperatura 
k = 0; 
for i = 1:m 
 for j = 1:n 
 k = k + 1; 
 Temp(i,j) = u(k); 
 end 
end 
Temp 