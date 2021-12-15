function [xArr,yArr, fValues, kValues] = steepestDescent(f,x1,limit,gamma)
fValues = [];
kValues = [];
xArr = [];
yArr = [];

xk = x1.x;
yk = x1.y;
k = 1;

syms x y;
J = jacobian(f, [x,y]);
Jval = vpa(subs(J, [x,y], [xk,yk]));

fValues(1) = subs(f,[x,y],[xk,yk]);
kValues(1) = k;
xArr(1) = xk;
yArr(1) = yk;

tolerance = 150;

while(norm(Jval)) >= limit && k < tolerance
    d = -Jval;
    xk = xk + gamma * d(1);
    yk = yk + gamma * d(2);
    Jval = vpa(subs(J, [x,y], [xk,yk]));
    
    fValues(k + 1) = subs(f, [x,y], [xk,yk]);
    kValues(k + 1) = k;
    xArr(k + 1) = xk; 
    yArr(k + 1) = yk; 
    k = k + 1;
end

end

