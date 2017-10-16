clc;
clear;
a = imread('cameraman.tif');
prompt='depth value';
b = input(prompt);

newDepth = 2^b-1;
figure, imshow(a);
g = quantize(a,newDepth);
figure,imshow(g,[0, newDepth]);

function w = quantize(a,newDepth)
    originalDepth = 8;
    maxval = 2^originalDepth -1;
    w = a * (newDepth/maxval);    
end

