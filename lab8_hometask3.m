clc
clear

syms x
f(x)=0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5;

Ans=diff(f,x);

Ans(0)
