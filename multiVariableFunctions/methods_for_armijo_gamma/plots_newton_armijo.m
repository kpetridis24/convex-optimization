
syms x y;
f = x^3 * exp(- x^2 - y^4);

x1.x = -1.2;
x1.y = -0.5;

[minPosition, fValues, k] = newton_armijo(f, x1, 0.01);

plot(k, fValues);
xlabel("iteration k");
ylabel("f(x_k)");