
clear;
clc;

f=@ (x) 0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5;
x=0;
tol=0.0001;
max=10;


h=1;

L(1)=(f(x+h)-f(x))/h;

O(1)=0;

for n=1:2
    
  h=h/10;
  
  L(n+1)=(f(x+h)-f(x))/(h);
  
  O(n+1)=abs(L(n+1)-L(n));
  
end

while O(n)>tol & (O(n)>O(n+1)) & n<max
    
  h=h/10;
  
  L(n+2)=(f(x+h)-f(x))/(h);
  
  O(n+2)=abs(L(n+2)-L(n+1));
  
  n=n+1;
  
end

Ans=L(n+1)