clc;
clear;

a = [10,29;20,30 ;30,40;40,60];
%bar(a);% barh(a)
barh(a);
xticks(1:4);
xticklabels({'10-20','20-30','30-40','40-50'});
legend('Before Training','After Training');
xlabel('Age group');
ylabel('Performance');