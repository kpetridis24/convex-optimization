% f:    the function whose min is to be calculated.
% a:    the left-most element of the given range.
% b:    the right-most element of the given range.
% l:    the limit of the range's size, which terminates the algorithm.
% ak:   the left-most element of the calculated range, in which the 
%       function's min is located.
% bk:   the right-most element of the calculated range, in which the 
%       function's min is located.
function [ak, bk, aValues, bValues, kValues] = derivativeBisectionMethod(f, a, b, l)
n = numOfCalculations(a, b, l);
syms x;
df = diff(f, 'x');

aValues = [];
bValues = [];
kValues = [];
aValues(1) = a;
bValues(1) = b;
kValues(1) = 1;

for k = 1: 1: n
    x1 = (a + b) / 2;
    value = subs(df,{x},{x1});
    if value == 0
        break;
    elseif value > 0
        b = x1;
    else
        a = x1;
    end
    aValues(k + 1) = a;
    bValues(k + 1) = b;
    kValues(k + 1) = k;
end

ak = a;
bk = b;
end

