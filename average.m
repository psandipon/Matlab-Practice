function y=average(x)
l=length(x);
sum=0;
for i=1:l
  sum=sum+x(i);
end
y=sum/l;
end