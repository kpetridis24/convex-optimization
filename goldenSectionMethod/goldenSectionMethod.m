% f:    the function whose min is to be calculated.
% a:    the left-most element of the given range.
% b:    the right-most element of the given range.
% l:    the limit of the range's size, which terminates the algorithm.
% ak:   the left-most element of the calculated range, in which the 
%       function's min is located.
% bk:   the right-most element of the calculated range, in which the 
%       function's min is located.
function [ak, bk, aValues, bValues, kValues] = goldenSectionMethod(f, a, b, l)
aValues = [];
bValues = [];
kValues = [];
aValues(1) = a;
bValues(1) = b;
kValues(1) = 1;

k = 1;
gamma = 0.618;
x1 = a + (1 - gamma) * (b - a);
x2 = a + gamma * (b - a);
syms x;
value1 = subs(f,{x},{x1});
value2 = subs(f,{x},{x2});

while b - a > l
    if value1 > value2
        a = x1;
        x1 = x2;
        x2 = a + gamma * (b - a);
        value1 = value2;
        value2 = subs(f,{x},{x2});
    else
        b = x2;
        x2 = x1;
        x1 = a + (1 - gamma) * (b - a);
        value2 = value1;
        value1 = subs(f,{x},{x1});
    end
    aValues(k + 1) = a;
    bValues(k + 1) = b;
    kValues(k + 1) = k;
    k = k + 1;
end

ak = a;
bk = b;
end

