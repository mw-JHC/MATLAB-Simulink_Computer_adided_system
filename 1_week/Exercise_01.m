clear; close all; clc;
%% ========================================================================
%  SubTask 1
%  ------------------------------------------------------------------------
disp("------------------------------1_1------------------------------")
doc magic
help magic

%% ========================================================================
%  SubTask 2
%  ------------------------------------------------------------------------
disp("------------------------------1_2------------------------------")
A = magic(3)
%% ========================================================================
%  SubTask 3
%  ------------------------------------------------------------------------
disp("------------------------------1_3------------------------------")
b = (10:10:30);
b = b(:)

%% ========================================================================
%  SubTask 4
%  ------------------------------------------------------------------------
disp("------------------------------1_4------------------------------")
tic
x = inv(A)*b;
toc

tic
x = A\b;
toc

tic
x = A^(-1)*b;
toc
%% ========================================================================
%  SubTask 5
%  ------------------------------------------------------------------------
disp("------------------------------1_5------------------------------")
A = reshape(A,[size(A,1)*size(A,2),1]);
A = sort(A);
A = A.^2

%% ========================================================================
%  SubTask 6
%  ------------------------------------------------------------------------
disp("------------------------------1_6------------------------------")
B = zeros(3);
B(1:9) = 2:2:18;
disp(B)

%% ========================================================================
%  SubTask 7
%  ------------------------------------------------------------------------
disp("------------------------------1_7------------------------------")
% Subscript indexing
B_subs = B;
for i = 1:size(B_subs,1) % i for row
    for j = 1:size(B_subs,2) % j for colum
        if mod(B_subs(i,j),4) == 0 % if remainder is zere, it mean that a element of B can be divided by 4.
            B_subs(i,j) = B_subs(i,j)/4;
        end
    end
end
B_subs

%linear indexing
B_lin = B;
for i = 1:numel(B_lin)
    if mod(B_lin(i),4) == 0
        B_lin(i) = B_lin(i)/4;
    end
end
B_lin

%
B_log = B;
B_help = B_log(mod(B_log,4)==0);
for i = 1:numel(B_help)
    B_log(B_log == B_help(i)) = B_help(i)/4;
end

B_log