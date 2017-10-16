clc;
clear;
img = imread('Quiz_01_01.bmp');
inv = img';
sumMatrix = sum(inv);
len = length(sumMatrix);

counter = 0;

firstArea = 0;
secondArea = 0;

for i=1:len
%     if(counter==0 && sumMatrix(i)~=200)
%         counter=counter+1;
%         disp(1);
    if(counter==1 && sumMatrix(i)~=200)
        firstArea=firstArea+1;
        disp(2);
%     elseif(counter==1 && sumMatrix(i)==200)
%         counter=counter+1;
%         disp(3);
%         if counter==2
%             break;
%         end
     end
end

disp(firstArea)