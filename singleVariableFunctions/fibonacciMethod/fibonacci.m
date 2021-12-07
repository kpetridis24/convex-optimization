function res = fibonacci(n)
fib = zeros(n+2);
fib(1) = 0;
fib(2) = 1;
counter = 3;
while counter <= n + 1
    fib(counter) = fib(counter - 1) + fib(counter - 2);
    counter = counter + 1;
end
res = fib(n + 1);
end

