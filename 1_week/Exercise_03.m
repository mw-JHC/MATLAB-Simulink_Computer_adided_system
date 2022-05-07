clear; close all; clc;
%% ========================================================================
%  SubTask 1
%  ------------------------------------------------------------------------
disp("------------------------------3_1------------------------------")
prompt = "Please select a calculation mode<sum/ factorial / fibonacci>\n";
mode = input(prompt,"s");

if strcmp(mode, "sum")
    disp(" Calculate the sum of all integers from 1 to n ")
elseif strcmp(mode, "factorial")
    disp(" Calculate the factorial of n")
elseif strcmp(mode, "fibonacci")
    disp(" Calculate the n_th element of the fibonacci series ")
else 
    disp(" you can select just one of <sum / factorial / fibonacci >")
end

%% ========================================================================
%  SubTask 2
%  ------------------------------------------------------------------------
disp("------------------------------3_2------------------------------")
prompt = "Please select a calculation mode<sum/ factorial / fibonacci>\n";
mode = input(prompt,"s");

switch mode
    case "sum"
        disp(" Calculate the sum of all integers from 1 to n ")
    case "factorial"
        disp(" Calculate the sum of all integers from 1 to n ")
    case "fibonacci"
        disp(" Calculate the n_th element of the fibonacci series ")
    otherwise
        disp(" you can select just one of <sum / factorial / fibonacci >")
end

%% ========================================================================
%  SubTask 3
%  ------------------------------------------------------------------------
disp("------------------------------3_3------------------------------")

n = 100;
x = 0;
for i = 1:100
    x = x + i;
end 


%test if it true
if x == sum(1:n)
    disp("True")
    disp(x)
else
    disp("False")
end

%% ========================================================================
%  SubTask 4
%  ------------------------------------------------------------------------
disp("------------------------------3_4------------------------------")
n = 9;
i =1;
x = 1;
while i <= n
    x = x*i;
    i = i + 1;
end

% test if it true
if x == factorial(n)
    disp("True")
    disp(x)
else
    disp("False")
end


%% ========================================================================
%  SubTask 5
%  ------------------------------------------------------------------------
disp("------------------------------3_5------------------------------")

% fibonacci with 'for loop' 
n = 10;
a_fibo = zeros(n+1,1);
a_fibo(1) = 0; a_fibo(2) = 1;

for i = 1:(n-1)
    a_fibo(i+2) = a_fibo(i) + a_fibo(i+1);
end


%test if it true 10-th fibonacci nummber 
if max(a_fibo) == fibonacci(n) 
    disp("True")
    disp(max(a_fibo))
else
    disp("False")
end


%fibonacci with 'while loop'
n = 10;
a_fibo = zeros(n+1,1);
a_fibo(1) = 0; a_fibo(2) = 1;
i = 1;
while i <= (n-1)
    a_fibo(i+2) = a_fibo(i) + a_fibo(i+1);
    i = i +1 ;
end


%test if it true 10-th fibonacci nummber 
if max(a_fibo) == fibonacci(n) 
    disp("True")
    disp(max(a_fibo))
else
    disp("False")
end

%% 3_6
disp("------------------------------3_6------------------------------")

% set max calculated time
max_time = 0.01;

%start clock
tic 
n = 10000;
a_fibo = zeros(n+1,1);
f_fibo(1) = 0; a_fibo(2) = 1;
i = 1; 
for i = 1:n-1
    a_fibo(i+2) = a_fibo(i) + a_fibo(i+1);
    if toc > max_time
        disp("the time of Calculation is over")
        break;
    end
end

disp(max(a_fibo))