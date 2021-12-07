function displayDescent(xValues,yValues)
c = 0.5;
len = length(xValues);

v0 = 1:(len-1);
v1 = v0 + 1;

vX0 = xValues(v0);
vY0 = yValues(v0);

vX1 = xValues(v1);
vY1 = yValues(v1);

vP1 = (vX1 - vX0) * c;
vP2 = (vY1 - vY0) * c;

s1 = plot(xValues,yValues,'-o','linewidth',1.5); 
hold on;
s2 = quiver(vX0,vY0,vP1,vP2,0,'r','linewidth',1.5);
grid on;
hold off;
axis equal;

end

