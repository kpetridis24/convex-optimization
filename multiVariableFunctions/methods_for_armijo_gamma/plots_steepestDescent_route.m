
xk = -1;
yk = -1;
k = 1;

syms x y;
f = x^3*exp(-x^2-y^4);
limit = 0.01;
gamma = 0.1;

J = jacobian(f, [x,y]);
Jval = vpa(subs(J, [x,y], [xk,yk]));

xValues = xk;
yValues = yk;

while(norm(Jval)) >= limit
    d = -calculateJacobian(xk, yk);
    xk = xk + gamma * d(1);
    yk = yk + gamma * d(2);
    Jval = vpa(subs(J, [x,y], [xk,yk]));
    xValues = [xValues, xk];
    yValues = [yValues, yk];
    k = k + 1;
end

displayDescent(xValues,yValues);
hold on;
fcontour(f,'linewidth',1.5);
