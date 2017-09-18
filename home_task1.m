clc;
clear all;
close all;
x=[1 2 3 4 5];
y=[0.5 1.7 3.4 5.7 8.4];
n=5;

sumx=0;
sumy=0;
sumxy=0;
sumxsq=0;
for i=1:n
  y(i)=log(y(i));
  sumx=sumx+x(i);
  sumy=sumy+y(i);
  sumxy=sumxy+x(i)*y(i);
  sumxsq=sumxsq+x(i)^2;
end

a1=(n*sumxy-sumx*sumy)/(n*sumxsq-sumx^2);
a0=(sumy/n)-a1*sumx/n;

plot(x,y,'o');
hold on;
ym=a0+a1.*x;
b=(y(2)-y(1))/(x(2)-x(1))
a=exp(a0)
plot(x,ym)
legend('Actual data points', 'Fitted straight line')
