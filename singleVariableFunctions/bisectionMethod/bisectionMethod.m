% f:    the function whose min is to be calculated.
% a:    the left-most element of the given range.
% b:    the right-most element of the given range.
% e:    distance from the bisector of the given range, in which the initial
%       x1, x2 will be placed.
% l:    the limit of the range's size, which terminates the algorithm.
% ak:   the left-most element of the calculated range, in which the 
%       function's min is located.
% bk:   the right-most element of the calculated range, in which the 
%       function's min is located.
function [ak, bk, aValues, bValues, kValues] = bisectionMethod(f, a, b, e, l)
aValues = [];
bValues = [];
kValues = [];
aValues(1) = a;
bValues(1) = b;
kValues(1) = 1;
k = 1;

while b - a > l
    x1 = ((a + b) / 2) - e;
    x2 = ((a + b) / 2) + e;
    syms x;
    if subs(f,{x},{x1}) < subs(f,{x},{x2}) 
        b = x2;
    else
        a = x1;
    end
    aValues(k + 1) = a;
    bValues(k + 1) = b;
    kValues(k + 1) = k;
    k = k + 1;
end

ak = a;
bk = b;
end

