a = linspace(0,6);
b = sin(a);
subplot(2,2,1);
plot(a,b);
h = figure(1);
subplot(2,2,2);
plot(a,b,'r-');
subplot(2,2,3);
plot(a,b,'r--');
c = cos(b);
subplot(2,2,4);
plot(a,c,'r--','LineWidth',3);
% hold on;
% plot(a,b,'r--');
% hold on;