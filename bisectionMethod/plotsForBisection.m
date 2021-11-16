function plotsForBisection(a, b)
syms x;
f1 = (x - 3) ^ 2 + sin(x + 3) ^ 2;
f2 = cos(x / 2) * (x - 1) + x ^ 2;
f3 = (x + 2) ^ 2 + sin(x + 3) * exp(x - 2);

disp("f1(x):")
analyzeBisection(f1, a, b);
disp('f2(x):');
analyzeBisection(f2, a, b);
disp('f3(x):');
analyzeBisection(f3, a, b);

end

