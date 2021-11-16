% f:    the function whose min is to be calculated.
% a:    the left-most element of the given range.
% b:    the right-most element of the given range.
% l:    the limit of the range's size, which terminates the algorithm.
% ak:   the left-most element of the calculated range, in which the 
%       function's min is located.
% bk:   the right-most element of the calculated range, in which the 
%       function's min is located.
function [ak, bk, aValues, bValues, kValues] = fibonacciMethod(f, a, b, l)
n = 0;
limit = (b - a) / l;
while fibonacci(n) < limit
    n = n + 1;
end

aValues = [];
bValues = [];
kValues = [];
aValues(1) = a;
bValues(1) = b;
kValues(1) = 1;

syms x;
x1 = a + (fibonacci(n - 2) / fibonacci(n)) * (b - a);
x2 = a + (fibonacci(n - 1) / fibonacci(n)) * (b - a);
value1 = subs(f,{x},{x1});
value2 = subs(f,{x},{x2});
e = 0.01;

for k = 1: 1: n - 2
    if value1 > value2 
        a = x1;
        x1 = x2;
        x2 = a + (fibonacci(n - k - 1) / fibonacci(n - k)) * (b - a);
        value1 = value2;
        value2 = subs(f,{x},{x2});
    else
        b = x2;
        x2 = x1;
        x1 = a + (fibonacci(n - k - 2) / fibonacci(n - k)) * (b - a);
        value2 = value1;
        value1 = subs(f,{x},{x1});
    end
    aValues(k + 1) = a;
    bValues(k + 1) = b;
    kValues(k + 1) = k;
end

x2 = x1 + e;
if value1 > subs(f,{x},{x2})
    a = x1;
else
    b = x1;
end

ak = a;
bk = b;
end

