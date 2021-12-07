function [xk,fValues,kValues] = newton(f,x1,limit,gamma)
fValues = [];
kValues = [];

xk = x1.x;
yk = x1.y;
k = 1;
syms x y;
J = jacobian(f, [x,y]);
H = hessian(f, [x,y]);
Jval = vpa(subs(J, [x,y], [xk,yk]));

fValues(1) = subs(f,[x,y],[xk,yk]);
kValues(1) = k;

while norm(Jval) >= limit
    Hval = vpa(subs(H, [x,y], [xk,yk]));
    d = -Hval \ Jval';
    xk = xk + gamma * d(1);
    yk = yk + gamma * d(2);
    Jval = vpa(subs(J, [x,y], [xk,yk]));
    fValues(k + 1) = subs(f, [x,y], [xk,yk]);
    kValues(k + 1) = k;
    k = k + 1;
end

xk = [xk, yk];
end

