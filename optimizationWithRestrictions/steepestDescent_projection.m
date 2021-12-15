function [xArr,yArr,fVal,kVal] = steepestDescent_projection(f,x1,limit,gamma,s,range1,range2)
xArr = [];
yArr = [];
fVal = [];
kVal = [];

xk = x1.x;
yk = x1.y;
k = 1;

syms x y;
J = jacobian(f, [x,y]);
Jval = vpa(subs(J, [x,y], [xk,yk]));

xArr(1) = xk;
yArr(1) = yk;
fVal(1) = subs(f,[x,y],[xk,yk]);
kVal(1) = 1;

tolerance = 150;

while (norm(Jval)) >= limit && k < tolerance
    expr = [xk,yk] - s * Jval;
    [xbar,ybar] = calculateProjection(expr(1),expr(2),range1,range2);
    xk = xk + gamma * (xbar - xk);
    yk = yk + gamma * (ybar - yk);
    Jval = vpa(subs(J, [x,y], [xk,yk]));
    
    xArr(k + 1) = xk;
    yArr(k + 1) = yk;
    fVal(k + 1) = subs(f,[x,y],[xk,yk]);
    kVal(k + 1) = k;
    k = k + 1;
end

end

