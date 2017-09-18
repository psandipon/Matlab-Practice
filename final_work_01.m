clc;
clear ;
f=@ (x) ( (x^2) - ( sin(x) ) - 5);
f1= @ (x) ((2*x) - ( cos(x) ) );

xi = 2 ;   
maxcount = 1000 ;
eps = .0001;

count=0;
disp( '   error   ');

while count<maxcount
    xi1=xi-f(xi)/f1(xi);
    err = abs ( (xi1 - xi) * 100 / xi1);
    xi=xi1;
  
    
     disp (xi) ;
           
    if err <= eps
         break;
    end
    count=count+1;
end

