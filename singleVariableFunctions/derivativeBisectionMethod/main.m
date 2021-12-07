a = -4;
b = 4;
syms x;
f1 = (x - 3) ^ 2 + sin(x + 3) ^ 2;
f2 = cos(x / 2) * (x - 1) + x ^ 2;
f3 = (x + 2) ^ 2 + sin(x + 3) * exp(x - 2);


[x1, y1] = derivativeBisectionMethod(f1, a, b, 0.01)
[x2, y2] = derivativeBisectionMethod(f2, a, b, 0.01)
[x3, y3] = derivativeBisectionMethod(f3, a, b, 0.01)

size = y3 - x3