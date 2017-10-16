clc;
clear;
scale = 2;
a = imread('cameraman.tif');

z1 = resizeMax(a,0.3);
z2 = resizeMax(z1,3);
figure, imshow(a);
impixelinfo
figure, imshow(z1/255);
impixelinfo
figure, imshow(z2/255);
impixelinfo
x = error(a,z2);
disp('resizeMax function error is = ');
disp(x);


z1 = resizeMin(a,0.3);
z2 = resizeMin(z1,3);
figure, imshow(a);
impixelinfo
figure, imshow(z1/255);
impixelinfo
figure, imshow(z2/255);
impixelinfo
x = error(a,z2);
disp('resizeMin function error is = ');
disp(x)


z1 = resizeCorner(a,0.3);
z2 = resizeCorner(z1,3);
figure, imshow(a);
impixelinfo
figure, imshow(z1/255);
impixelinfo
figure, imshow(z2/255);
impixelinfo
x = error(a,z2);
disp('resizeCorner function error is = ');
disp(x)

z1 = resizeAvg(a,0.3);
z2 = resizeAvg(z1,3);
figure, imshow(a);
impixelinfo
figure, imshow(z1/255);
impixelinfo
figure, imshow(z2/255);
impixelinfo
x = error(a,z2);
disp('resizeAvg function error is = ');
disp(x)


function e = error(a,b)

         a1 = sum(sum(a))/size(a,1);
         b1 = sum(sum(b))/size(b,1);
         
         c = round(sqrt((a1.^2)-(b1.^2)));
         e=c;
end
function w = resizeCorner(a,s)
    if s<1
        [rows,columns] = size(a);
        i =1; j=1;
        c = zeros(round(rows*s), round(columns*s));
        l= round(1/s);
        for x=1:l:rows
            for y= 1:l:columns
                c(i,j)=a(x,y);
                j=j+1;
            end
            i=i+1;
            j=1;
        end
    end;
    if s>1
        [rows,columns] = size(a);
        crows = floor(s*rows);
        ccolumns = floor(s*columns);
        c = zeros(crows, ccolumns);
        [crows,ccolumns] = size(c);
        for i=0:crows-1
            for j= 0:ccolumns-1
                x = floor(i/s);
                y = floor(j/s);
                c(i+1,j+1)=a(x+1,y+1);
            end
        end
    end
    w = c;
end
function w = resizeMax(a,s)
    if s<1
        [rows,columns] = size(a);
        i =1; j=1;
        c = zeros(round(rows*s), round(columns*s));
        l = round(1/s);
        if mod(1,s) ==0
            l = round(1/s);
            f =0 ;
        elseif mod(1,s) ~=0
            l = round(1/s);
            f = round(1/s);
        end
        for x=1:l:rows-f
            for y= 1:l:columns-f
                   t= a(x:x+l-1,y:y+l-1);
                   v1 = max(max(t));
                   c(i,j)=v1;
                   j=j+1;
            end
            i=i+1;
            j=1;
        end
    end
    if s>1
        [rows,columns] = size(a);
        crows = floor(s*rows);
        ccolumns = floor(s*columns);
        c = zeros(crows, ccolumns);
        [crows,ccolumns] = size(c);
        for i=0:crows-1
            for j= 0:ccolumns-1
                x = floor(i/s);
                y = floor(j/s);
                c(i+1,j+1)=a(x+1,y+1);
            end
        end
    end
    w = c;
end
function w = resizeAvg(a,s)
    if s<1
        [rows,columns] = size(a);
        i =1; j=1;
        c = zeros(round(rows*s), round(columns*s));
        if mod(1,s) ==0
            l = round(1/s);
            f =0 ;
        elseif mod(1,s) ~=0
            l = round(1/s);
            f = round(1/s);
        end
        for x=1:l:rows-f
            for y= 1:l:columns-f
                   t= a(x:x+l-1,y:y+l-1);
                   v1 = mean(mean(t));
                   c(i,j)=v1;
                   j=j+1;
            end
            i=i+1;
            j=1;
        end
    end
    if s>1
        [rows,columns] = size(a);
        crows = floor(s*rows);
        ccolumns = floor(s*columns);
        c = zeros(crows, ccolumns);
        [crows,ccolumns] = size(c);
        for i=0:crows-1
            for j= 0:ccolumns-1
                x = floor(i/s);
                y = floor(j/s);
                c(i+1,j+1)=a(x+1,y+1);
            end
        end
    end
    w = c;
end
function w = resizeMin(a,s)
    if s<1
        [rows,columns] = size(a);
        i =1; j=1;
        c = zeros(round(rows*s), round(columns*s));
        if mod(1,s) ==0
            l = round(1/s);
            f =0 ;
        elseif mod(1,s) ~=0
            l = round(1/s);
            f = round(1/s);
        end
        for x=1:l:rows-f
            for y= 1:l:columns-f
                   t= a(x:x+l-1,y:y+l-1);
                   v1 = min(min(t));
                   c(i,j)=v1;
                   j=j+1;
            end
            i=i+1;
            j=1;
        end
    end
    if s>1
        [rows,columns] = size(a);
        crows = floor(s*rows);
        ccolumns = floor(s*columns);
        c = zeros(crows, ccolumns);
        [crows,ccolumns] = size(c);
        for i=0:crows-1
            for j= 0:ccolumns-1
                x = floor(i/s);
                y = floor(j/s);
                c(i+1,j+1)=a(x+1,y+1);
            end
        end
    end
    w = c;
end
