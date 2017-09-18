

clc;
clear;


f=@(x) x^2-(10*x)+sin(2*x);
x_low=2;
x_up=10;
h=0.1;
x=x_low:h:x_up;

for k=1:length(x)
    y(k)=f(x(k));
end

s=0;
for i=1:length(x)-1
    s=s+(y(i)+y(i+1))*h/2;
end
fprintf('Result = %d\n',s*2/sqrt(pi));







