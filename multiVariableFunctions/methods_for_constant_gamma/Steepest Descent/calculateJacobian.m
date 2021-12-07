
function [j] = calculateJacobian(xk,yk)
syms x y;
f = x^3 * exp(-x^2 - y^4);
J = jacobian(f,[x,y]);
j = vpa(subs(J,[x,y],[xk,yk]));
end 