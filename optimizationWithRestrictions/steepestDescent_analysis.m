syms x y;
f = 0.5 * x^2 + 2 * y^2;

limit = 0.01;
gammaValues = [0.05,0.5,2,10];

x1.x = 5;
x1.y = 7;

for gamma = gammaValues
    [xarr, yarr, fval, kval] = steepestDescent(f, x1, limit, gamma);
    
    plotRoute(f, xarr, yarr);
    plotFunctionValues(fval, kval);
end