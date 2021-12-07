
x1.x = 1;
x1.y = 1;

syms x y;
f = x^3 * exp(- x^2 - y^4);

results = zeros(1,5);
n = 1;

gammaValues = [0.1,0.3,0.5,0.7,0.9,1.1];

for gamma = gammaValues
    disp('next');
    [minPosition, fValues, k] = newton(f, x1, 0.01, gamma);

    if gamma == 0.1 || gamma == 0.7
        plot(k, fValues);
        xlabel("iteration k");
        ylabel("f(x_k)");
        figure;
    end
    
    len = size(fValues);
    results(n) = fValues(len(2));
    n = n + 1;
end

deviation = results + 0.409916;
plot(gammaValues, deviation);
xlabel("gamma value");
ylabel("deviation from x=-0.409916");