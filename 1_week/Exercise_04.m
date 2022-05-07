clear; close all; clc;
%% ========================================================================
%  SubTask 1
%  ------------------------------------------------------------------------
disp("------------------------------4_1------------------------------")
% create Scripts files

% the Index of Fibonacci 
n = 100;

scripts_fibonacci;

fprintf("the %d-th element of fibonacci is %d. \n", n, ans_fibo)


%% ========================================================================
%  SubTask 2
%  ------------------------------------------------------------------------

disp("------------------------------4_2------------------------------")

clearvars -except 'n';

%clock start
tic
ans_fibo = function_fibonacci(n);

%clock end
toc
fprintf("the %d-th element of fibonacci is %d. \n", n, ans_fibo)
%% ========================================================================
%  SubTask 3
%  ------------------------------------------------------------------------
disp("------------------------------4_3------------------------------")

%clock start
tic

ans_fibo = fibonacci_recursive(n);

%clock end
toc

fprintf("the %d-th element of fibonacci is %d. \n", n, ans_fibo)

%% ========================================================================
%  SubTask 4
%  ------------------------------------------------------------------------
disp("------------------------------4_4------------------------------")
% Radius 
r =4;

[volume, surface, circumference] = SphereData(r);

fprintf("If Radius is %d \n Volume: %0.4f \n Surface: %0.4f \n Circumference: %0.3f\n",r, volume, surface, circumference)
%% ========================================================================
%  SubTask 5
%  ------------------------------------------------------------------------
disp("------------------------------4_5------------------------------")

[volume, surface, circumference] = SphereData_local(r);

fprintf("If Radius is %d \n Volume: %0.4f \n Surface: %0.4f \n Circumference: %0.3f\n",r, volume, surface, circumference)