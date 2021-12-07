
syms x y;
f = x^3 * exp(- x^2 - y^4);

x1.x = 1;
x1.y = 1;

[minPosition, fValues, k] = levenbergMarquardt_armijo(f, x1, 0.01);

plot(k, fValues);
xlabel("iteration k");
ylabel("f(x_k)");