% f:    the function whose min is to be calculated.
% a:    the left-most element of the given range.
% b:    the right-most element of the given range.
% l:    the limit of the range's size, which terminates the algorithm.
% ak:   the left-most element of the calculated range, in which the 
%       function's min is located.
% bk:   the right-most element of the calculated range, in which the 
%       function's min is located.
function [ak, bk] = goldenSectionMethod(f, a, b, l)
k = 1;
gamma = 0.618;
x1 = a + (1 - gamma) * (b - a);
x2 = a + gamma * (b - a);
syms g;
value1 = subs(f,{g},{x1});
value2 = subs(f,{g},{x2});

while b - a > l
    if value1 > value2
        a = x1;
        x1 = x2;
        x2 = a + gamma * (b - a);
        value1 = value2;
        value2 = subs(f,{g},{x2});
    else
        b = x2;
        x2 = x1;
        x1 = a + (1 - gamma) * (b - a);
        value2 = value1;
        value1 = subs(f,{g},{x1});
    end
    k = k + 1;
end

ak = a;
bk = b;
end

