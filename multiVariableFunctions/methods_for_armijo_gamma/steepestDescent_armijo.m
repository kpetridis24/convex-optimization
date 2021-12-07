function [xk,fValues,kValues] = steepestDescent_armijo(f,x1,limit)
fValues = [];
kValues = [];

xk = x1.x;
yk = x1.y;
k = 1;
syms x y;
J = jacobian(f, [x, y]);
Jval = vpa(subs(J, [x,y], [xk,yk]));

fValues(1) = subs(f,[x,y],[xk,yk]);
kValues(1) = k;

while norm(Jval) >= limit
    d = -Jval;
    [xk,yk] = armijo(f,xk,yk,d);
    Jval = vpa(subs(J, [x,y], [xk,yk]));
    fValues(k + 1) = subs(f, [x,y], [xk,yk]);
    kValues(k + 1) = k;
    k = k + 1;
end

xk = [xk, yk];
end
