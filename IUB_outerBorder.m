%
clc;
clear;

pic = imread('Quiz_01_01.bmp');

[r c] = size(pic);

Lpic =  uint8(zeros(size(pic)));


for x=1:r
    for y=1:c
        if x~=1 && y~=1 && x~=r && y~=c
            if pic(x,y) ~= 0
                
                v1 = pic (x-1,y-1) ;
                v2 = pic (x-1,y) ;
                v3 = pic (x-1,y+1) ;
                
                v4 = pic (x,y-1) ;
                v5 = pic (x,y+1) ;
                
                v6 = pic (x+1,y-1) ;
                v7 = pic (x+1,y) ;
                v8 = pic (x+1,y+1) ;
                
                if (v1==0 || v2==0 || v3==0 || v4==0 || v5==0 || v6==0 || v7==0 || v8==0 )
                    Lpic(x,y) = 1 ;
                end
                
            end
        end
    end
    
end

Lpic