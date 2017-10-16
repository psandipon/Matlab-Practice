
clc;
clear;

pic = imread('Quiz_01_01.bmp');

[r c] = size(pic);

Lpic =  uint8(zeros(size(pic)));


for x=1:r
    for y=1:c
        if pic(x,y) == 0
            
            v1 = pic (x-1,y-1) ;
            v2 = pic (x-1,y) ;
            v3 = pic (x-1,y+1) ;
            
            v4 = pic (x,y-1) ;
            v5 = pic (x,y+1) ;
            
            v6 = pic (x+1,y-1) ;
            v7 = pic (x+1,y) ;
            v8 = pic (x+1,y+1) ;
            
            if (v1==1 || v2==1 || v3==1 || v4==1 || v5==1 || v6==1 || v7==1 || v8==1)
                Lpic(x,y) = 1 ;
            end
            
        end
    end
    
end

Lpic