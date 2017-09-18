clc;
clear;

x=[1 1.3 1.6 2 2.5 2.9 3.5];
y=[10 13 19 25 26 26.5 26.8];
n=5;

sumx=0;
sumy=0;
sumxy=0;
sumxsq=0;
for i=1:n
  x(i)=log(x(i));
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
