syms x y;
f = 0.5 * x^2 + 2 * y^2;

gammaValues = [0.05, 0.3, 0.1];
a = [10, -7, 17];
b = [-5, 5, -5];
limit =  [0.01, 0.02, 0.01];
s = [8, 10, 0.5];

r1.a = -15;r1.b = 15;
r2.a = -20;r2.b = 12;

i = 1;

for gamma = gammaValues
    x1.x = a(i);
    x1.y = b(i);
    [xarr,yarr,fval,kval] = steepestDescent_projection(f, x1, limit(i), gamma, s(i), r1, r2);
    
    plotRoute(f,xarr,yarr);
    plotFunctionValues(fval,kval);
    i = i + 1;
end