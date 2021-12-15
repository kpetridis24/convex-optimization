function plotRoute(f,xarr,yarr)
figure;
plot(xarr,yarr,'-x');
hold on;
fcontour(f, 'linewidth', 1);
hold on;
plot(0,0,'r*');
rectangle('position',[-15,-20,30,32],  'linestyle', ':', 'edgecolor', 'r', 'linewidth', 1.5);
xlabel('x axis');
ylabel('y axis');
hold off;
end

