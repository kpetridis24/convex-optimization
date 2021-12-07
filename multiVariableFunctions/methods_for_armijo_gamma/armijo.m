function [xNext,yNext] = armijo(f,xk,yk,d)
s = 1;
a = 0.01;
b = 0.4;
m = 0;
gamma = s * b^m;
xNext = xk + gamma * d(1);
yNext = yk + gamma * d(2);

syms x y;
previousVal = subs(f, [x,y], [xk,yk]);
nextVal = subs(f, [x,y], [xk,yk]);
J = jacobian(f, [x,y]);
Jval = vpa(subs(J, [x,y], [xk,yk]));

while previousVal - nextVal<(-a*(b^m)*s*d'*Jval)
    m = m + 1;
    gamma = s * b^m;
    xNext = xk + gamma * d(1);
    yNext = yk + gamma * d(2);
    nextVal = xNext^3 * exp(-xNext^2 - yNext^4);
    Jval = vpa(subs(J, [x,y], [xk,yk]));
end

end

