function [x1bar,x2bar] = calculateProjection(x1,x2,range1,range2)
a1 = range1.a;
b1 = range1.b;
a2 = range2.a;
b2 = range2.b;

if x1 <= a1
    x1bar = a1;
elseif x1 >= b1
    x1bar = b1;
else
    x1bar = x1;
end
    
if x2 <= a2
    x2bar = a2;
elseif x2 >= b2
    x2bar = b2;
else
    x2bar = x2;
end
    
end

