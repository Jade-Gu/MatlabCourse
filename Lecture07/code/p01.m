x1=[120 140 190 130 155 175 125 145 180 150]';
x2=[100 110 90 150 210 150 250 270 300 250]';
y=[102 100 120 77 46 93 26 69 65 85]';
%% 绘制散点图观察
figure,plot(y,x1,'r*');
hold on,plot(y,x2,'b+');hold off;

%% 由散点图发现x2与y有较明显的线性关系，但是x1与y就不太明显
%首先使用线性假设进行尝试：y=ax1+bx2+c
x=[ones(10,1),x1,x2];
[b,bint,r,rint,stats]=regress(y,x);
b,bint,stats

%% 结果分析
% p=0.0247，在0.05的假设水平下可用。
