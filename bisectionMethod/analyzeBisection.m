function analyzeBisection(f, a, b)
l = 0.01;
index = 1;

x1Values = zeros([1 9]);
x2Values = zeros([1 9]);
aValues = [];
bValues = [];
kValues = [];
eValues = [0.0001 0.0004 0.0008 0.0012 0.0016 0.002 0.0024 0.0028 0.0032];

disp("Bisection Method");
disp("Running for constant 'l' and varying 'e'");

for e = eValues
    [x1, x2, aValues, bValues, kValues] = bisectionMethod(f, a, b, e, l);
    x1Values(index) = x1;
    x2Values(index) = x2;
    index = index + 1;
end

figure
plot(eValues, x1Values, eValues, x2Values);
title("Result-range [x,y] values for varying 'e', l=const");
xlabel("'e' value");
ylabel("range value");
legend({'x','y'},'Location','southwest')

figure
plot(kValues, aValues, kValues, bValues);
title("Range [ak,bk] values in relation to 'k'");
xlabel("'k' value");
ylabel("ak/bk value");
legend({'ak','bk'},'Location','southwest')

index = 1;
x1Values = zeros([1 12]);
x2Values = zeros([1 12]);
e = 0.001;
lValues = [0.01 0.04 0.08 0.12 0.25 0.45 0.6 0.8 1 1.3 1.7 2.2];

disp("Running for constant 'e' and varying 'l'");

for l = lValues
    [x1, x2] = bisectionMethod(f, a, b, e, l);
    x1Values(index) = x1;
    x2Values(index) = x2;
    index = index + 1;
end

figure
plot(lValues, x1Values, lValues, x2Values);
title("Result-range [x,y] values for varying 'l', e=const");
xlabel("'l' value");
ylabel("range value");
legend({'x','y'},'Location','southwest')

end

