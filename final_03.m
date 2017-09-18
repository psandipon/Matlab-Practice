clc;

clear ;

x = [1 1.3 1.6 2 2.5 2.9 3.5];
y=  [10 13 19 25 26 26.5 26.8];

n=length(x);


for i=1:length(x)
    
    xx(i)=log(x(i));
    yy(i)=log(y(i));
    
end

sumxx=0;
sumyy=0;
sumxxyy=0;
sumxxsq=0;

for j=1:length(x)
    
    sumxx=sumxx+xx(j);
    sumyy= sumyy+yy(j);
    sumxxyy= sumxxyy+xx(j)*yy(j);
    sumxxsq= sumxxsq+ (xx(j))^2;
    
end


a1 = (n*sumxxyy-sumxx*sumyy)/(n*sumxxsq-(sumxx)^2);
a0 = sumyy/n - a1*(sumxx/n);


a=exp(a0);
b=a1;

disp(a);
disp(b);


z=a*(2.3^b);

X=2.3;




disp(z);
sum=0;
for i=1:length(x)
    
    sum = sum+ abs(y(i)-yy(i));
end

disp(sum);

    
    
    






    
    
    
    
    
    