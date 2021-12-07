syms x;
a = -4;
b = 4;
f1 = (x - 3) ^ 2 + sin(x + 3) ^ 2;
f2 = cos(x / 2) * (x - 1) + x ^ 2;
f3 = (x + 2) ^ 2 + sin(x + 3) * exp(x - 2);
%[a, b] = goldenSectionMethod(f1, a, b, 0.01)
[a2, b2] = goldenSectionMethod(f2, a, b, 0.01)
%[a3, b3] = goldenSectionMethod(f3, a, b, 0.01)