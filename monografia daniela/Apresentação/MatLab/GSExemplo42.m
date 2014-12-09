echo on; clc; clear all; format long;
A = [ 10   2    -3    2;
      2   -15    3   -2;
      1   -3    20    2;
      2    2    -1    30];          %Matriz A

B = [ 32; -59;  -38;  160];         % Matriz B.

P = [ 0;   0;  0;  0];         %Chute inicial.
delta = 1e-12;         %Tolerância
max1 = 50;             %Número de Iterações
[X,dX,Pm] = gseid(A,B,P,delta,max1);
%Seção que imprime os resultados.
Mx1 = 'Cálculos para iteração de Gauss-Seidel.';
Mx2 = 'Matriz A =';
Mx3 = 'Matriz B é exibido como B` =';
Mx4 = 'Solução X é exibido como X`  = ';
clc,echo off,diary output,...
disp(''),disp(Mx1),disp(Pm),...
diary off,echo on
echo off,diary output,...
disp(Mx2),disp(A),disp(Mx3),disp(B'),...
disp('========================================================='),...
disp(Mx4),disp(X'),...
disp('=========================================================='),...
diary off,echo on
xsol=A\B %Verifica a solução encontrada