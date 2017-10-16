
clc;
clear;

resize_pic('cameraman.tif',.5);


function im_resize=resize_pic(picture_location,scale);

pic=imread(picture_location);
[row,column,channel]=size(pic);

if channel==3
    disp('this one is a 3 channel color image');
    row=row*scale;
    column=column*scale;
    
    matrix=(zeros(ceil(row),ceil(column)));
    
    for rowCount=0:row-1
        for columnCount=0:column-1
            
            newRow=floor(rowCount/scale);
            newColumn=floor(columnCount/scale);
           for chCount=1:channel  
                matrix(rowCount+1,columnCount+1,chCount)=pic(newRow+1,newColumn+1,chCount);
             end
        end
    end

else
    disp('---Hello ! This one is a 1 channel gray scale image---');
    
    row=row*scale;
    column=column*scale;
    
    matrix=uint8(zeros(ceil(row),ceil(column)));
    
    for rowCount=0:row-1
        for columnCount=0:column-1
            oldRow=floor(rowCount/scale);
            oldColumn=floor(columnCount/scale);
           
                 matrix(rowCount+1,columnCount+1,channel)=pic(oldRow+1,oldColumn+1,channel);
       
        end
    end
end
im_resize=matrix;
figure,imshow(matrix);
end