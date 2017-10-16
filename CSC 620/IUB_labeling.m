
clc;
clear;

pic = imread('Quiz_01_01.bmp');

[r c] = size(pic);

Lpic =  uint8(zeros(size(pic)));

%assuming there is will be not more than 128 labels
labels = reshape(1:128, [128 1])';

pointer = 0 ;

MaxLabel = -1 ;

for x=1:r
    for y=1:c 
        
        
        if pic(x,y) == 0
            
            vU=-1 ;
            vL=-1;
            
            %checking up value for labels
            if x~=1
                if (Lpic(x-1,y)~=0)
                     vU = Lpic(x-1,y); 
                end
            end
            
            %checking left value for labels
            if y~=1
                if (Lpic(x,y-1)~=0)
                     vL = Lpic(x,y-1);
                end
            end

            % new label
            if vU==-1 && vL ==-1 
                pointer = pointer + 1 ;
                Lpic(x,y) = labels(pointer);
            end
            
            % left label
            if vU==-1 && vL~=-1
                Lpic(x,y) = vL ;
            end
            
            % upper label
            if vU ~=-1 && vL ==-1
                Lpic(x,y) = vU ;
            end
            
            % both labels
            if vU ~=-1 && vL ~=-1
                Lpic(x,y) = vL ;
                %defining vU as vL
                for i=1:length(labels)
                    if labels(i)==vU
                        labels(i) = vL ;
                    end
                end
            end
            
            MaxLabel = vL;
            
        end % main if ends
        
    end
end

nlabels = reshape(1:MaxLabel, [MaxLabel 1])';

for i=1:MaxLabel
    nlabels(1,i) = labels(1,i) ;
end

[r c] = size(Lpic);

for x=1:r
    for y=1:c
        if (Lpic(x,y)~= 0)
            index = Lpic(x,y); 
            Lpic(x,y)=nlabels(1,Lpic(x,y)) ;
        end
    end
end




Lpic
