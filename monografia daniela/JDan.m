echo on; clc;
%---------------------------------------------------------------------------
%A3_4   MATLAB script file for implementing Algorithm 3.4
%
% NUMERICAL METHODS: MATLAB Programs, (c) John H. Mathews 1995
% To accompany the text:
% NUMERICAL METHODS for Mathematics, Science and Engineering, 2nd Ed, 1992
% Prentice Hall, Englewood Cliffs, New Jersey, 07632, U.S.A.
% Prentice Hall, Inc.; USA, Canada, Mexico ISBN 0-13-624990-6
% Prentice Hall, International Editions:   ISBN 0-13-625047-5
% This free software is compliments of the author.
% E-mail address:      in%"mathews@fullerton.edu"
%
% Algorithm 3.4 (Jacobi Iteration).
% Section	3.7, Iterative Methods for Linear Systems, Page 186
%---------------------------------------------------------------------------

clc;

% - - - - - - - - - - - - - - - - - - - - - - - - - -
%
% This program solves a linear system AX = B.
%
% Where A is diagonally dominant.
%
% A is an n x n matrix, B is an n-dimensional vector.
%
% The method is Jacobi fixed point iteration.
%
% Remark. jacobi.m is used for Algorithm 3.4

pause % Press any key to perform Jacobi iteration.

clc; clear all; format long;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - -
%
% Example 3.25, page 180
%
% Use Jacobi iteration to solve the linear system AX = B:

A = [ 4      0.24  -0.08;
      0.09   3     -0.15;
      0.04  -0.08    4];

B = [ 8; 9;  20];         % Enter B as a column vector.

pause % Press any key to continue.

clc;

% - - - - - - - - - - - - - - - - - - - - - - - - - - - -
%
% Example 3.25, page 180
%
% Use Jacobi iteration to solve the linear system AX = B:
%
% Enter the starting vector in  P
% Enter the tolerance in  delta
% Enter the number of iterations in  max1

P = [ 0;   0;   0];         % Enter P as a column vector.
delta = 1e-12;
max1 = 50;

[X,dX,Pm] = jacobi(A,B,P,delta,max1);

pause % Press any key to continue.

clc;
%............................................
% Begin section to print the results.
% Diary commands are included which write all
% the results to the Matlab textfile   output
%............................................
Mx1 = 'Computations for Jacobi iteration.';
Mx2 = '     x                  y                  z';
Mx3 = 'The matrix is A =';
Mx4 = 'The vector B is displayed as B` =';
Mx5 = 'The solution X is displayed as X`  = ';
Mx6 = 'The accuracy is  +- dX,  where dX` = ';
clc,echo off,diary output,...
disp(''),disp(Mx1),disp(Mx2),disp(Pm),...
diary off,echo on
pause % Press any key to continue.
clc,echo off,diary output,...
disp(Mx3),disp(A),disp(Mx4),disp(B'),...
disp(Mx5),disp(X'),disp(Mx6),disp(dX'),...
disp('Iteration is converging linearly to the solution.'),...
diary off,echo on
pause % Press any key to perform Jacobi iteration.

clc;

