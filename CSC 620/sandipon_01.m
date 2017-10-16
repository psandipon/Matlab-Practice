clc;
clear;
I = imread('Quiz_01_01.bmp');

count = 0 ;
startpoint=-1 ;
thatIvalue = -1 ;
for i=1:1:201
    for j=1:1:200
        temp = j ;
        if(I(i,j)==0)
            startpoint = j ; % found startpoint
         for j=temp:1:200
            if(I(i,j)==1)
                endpoint = j-1; %found endpoint
                break;
            end
         end
         break ;
         
        end
    end
    if(startpoint>0)
        thatIvalue = i ;
        break
    end
end

disp('startpoint')
disp(startpoint)

disp('endpoint')
disp(endpoint)

disp(thatIvalue+(endpoint-startpoint))

for i=thatIvalued:1:201
    for j=1:1:200
        temp = j ;
        if(I(i,j)==0)
            startpoint = j ; % found startpoint
         for j=temp:1:200
            if(I(i,j)==1)
                endpoint = j-1; %found endpoint
                break;
            end
         end
         break ;
         
        end
    end
    if(startpoint>0)
        thatIvalue = i ;
        break
    end
end

disp('startpoint')
disp(startpoint)

disp('endpoint')
disp(endpoint)

