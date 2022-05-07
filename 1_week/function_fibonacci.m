function [output] = function_fibonacci(n)

a_fibo = zeros(n+1,1);
a_fibo(1) = 0; a_fibo(2) = 1;

for i = 1:(n-1)
    a_fibo(i+2) = a_fibo(i) + a_fibo(i+1);
end

output = max(a_fibo);

end
