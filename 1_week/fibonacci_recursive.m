function [a_n] = fibonacci_recursive(n)

if n>=2
    a_n = fibonacci_recursive(n - 1) + fibonacci(n - 2);
elseif n == 1
    a_n = 1;
else 
    a_n = 0;
end

end