echo on; clc;
clc;
% - - - - - - - - - - - - - - - - - - - - - - - - - - -
%Este programa resolve um sistema linear Ax = B.
% Onde A é diagonalmente dominante.
% A é uma matriz nxn, B é um vector n-dimensional.
% O método é de Gauss-Seidel iteração.
%Observação%. gseid.m é usado para o algoritmo 3.5
% - - - - - - - - - - - - - - - - - - - - - - - - - - -
pause % Press any key to perform Gauss-Seidel iteration.
clc; clear all; format long;

A = [ 10   2    -3    2;
      2   -15    3   -2;
      1   -3    20    2;
      2    2    -1    30];          %Matriz A

B = [ 32; -59;  -38;  160];         % Matriz B.

pause % Pressione qualquer tecla para continuar..

clc;

P = [ 0;   0;  0;  0];         %Chute inicial.
delta = 1e-12;         %Tolerância
max1 = 50;             %Número de Iterações

[X,dX,Pm] = gseid(A,B,P,delta,max1);

pause % Pressione qualquer tecla para continuar.

clc;
%Seção que imprime os resultados.
Mx1 = 'Cálculos para iteração de Gauss-Seidel.';
Mx2 = '     x                  y                  z';
Mx3 = 'Matriz A =';
Mx4 = 'Matriz B é exibido como B` =';
Mx5 = 'Solução X é exibido como X`  = ';
Mx6 = 'The accuracy is  +- dX,  where dX` = ';
clc,echo off,diary output,...
disp(''),disp(Mx1),disp(Mx2),disp(Pm),...
diary off,echo on
pause % Pressione qualquer tecla para continuar..
clc,echo off,diary output,...
disp(Mx3),disp(A),disp(Mx4),disp(B'),...
disp(Mx5),disp(X'),disp(Mx6),disp(dX'),...
disp('Iteração converge linearmente para a solução.'),...
diary off,echo on
pause % Pressione qualquer tecla para sair.

clc;
