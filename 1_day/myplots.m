a = linspace(0,6);
b = sin(a);
plot(a,b);
h = figure(1);
plot(a,b,'r-');
plot(a,b,'r--');
c = cos(b);
plot(a,c,'r--','LineWidth',3);
hold on;
plot(a,b,'r--');
hold on;
c = cos(a);
plot(a,c,'r-','LineWidth',3);
grid on;
xlabel('x-Axis')
ylabel('Y-label');
title('Plot')
legend('sin','cos');
gtext('input the the text anywhere');
diary off;
