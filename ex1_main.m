%main file
clc;
clear;
%Example 1
%A=[5 4 1;10 9 4;10 13 15]
%B=[3.4;8.8;19.2]

%Example 2

%A=[10 3 4;2 -10 3;3 2 -10]
%B=[15;37;-10]

% Example 3
%A=[9 3 3 3;3 10 -2 -2;3 -2 18 10;3 -2 10 10]
%B=[24;17;45;29]

% Example 4

%A=[3 -0.1 -0.2;0.1 7 -0.3;0.3 -0.2 10]
%B=[7.85;-19.3;71.4]

% Exampe 5
A=[4 2 14;2 17 -5;14 -5 83];
B=[14 ;-101;155];

disp('Doolittle method')
[L,U,x]=LU_doolittle(A,B)

disp('Crouts method')
[L,U,x]=LU_crout(A,B)

disp('Cholesky Method')
LU_cholesky(A,B)
