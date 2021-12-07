function analyzeGoldenSection(f, a, b)
index = 1;
x1Values = zeros([1 12]);
x2Values = zeros([1 12]);
aValues = [];
bValues = [];
kValues = [];
lValues = [0.01];

disp("Golden Section Method");
disp("Running for varying 'l'");

for l = lValues
    [x1, x2, aValues, bValues, kValues] = goldenSectionMethod(f, a, b, l);
    x1Values(index) = x1;
    x2Values(index) = x2;
    index = index + 1;
end

figure
plot(lValues, x1Values, lValues, x2Values);
title("Result-range [x,y] values for varying 'l'");
xlabel("'l' value");
ylabel("range value");
legend({'x','y'},'Location','southwest')

figure
plot(kValues, aValues, kValues, bValues);
title("Range [ak,bk] values in relation to 'k'");
xlabel("'k' value");
ylabel("ak/bk value");
legend({'ak','bk'},'Location','southwest')

end

