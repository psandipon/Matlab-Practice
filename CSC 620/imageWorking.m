clc;
clear;
pic = imread('Quiz_01_01.bmp');

picI = pic';

s2 = sum(picI);

c1 =  0 ;

[r c] = size(s2);


counter1 = 0 ;
counter2 = 0 ;


flag = 0 ;
iv = 0 ;

% for i=1:c
%     
%     if s2(i)~=200
%            counter1=counter1+1;
%            flag = 1 ;
%     else
%         iv=i;
%         if flag == 1 break;
%         end
%     end
%         
% end
% 
% 
% for i=iv:c
%     
%     if s2(i)~=200
%            counter2=counter2+1;
%     end
%         
% end



for i=1:c
    
    if s2(i)~=200
           counter1=counter1+1;
           flag = 1 ;
    else
        iv=i;
        if flag == 1 break;
        end
    end
    
    
    
        
end


disp(counter1);
disp(counter2);

