
clc;
clear;

a = imread('cameraman.tif');
figure, imshow(a);

z1 = nearest_neighbour_zoom(a,1/3); figure, imshow(z1);
z2 = nearest_neighbour_zoom(z1,3); figure, imshow(z2);
z3 = nearest_neighbour_zoom(a,1.5); figure, imshow(z3);

x = error(a,z2); disp('x is =') ; disp(x);


function e = error(a,b)
    a = double(a);
    b = double(b);
    e=sum(sqrt(mean((a - b).^2)));
end


function Img_zoomed = nearest_neighbour_zoom(Img, factor)
 
[h w c] = size(Img);
wn = round(w*factor);
hn =    round (h*factor);
Img_zoomed = uint8(zeros(hn, wn));
 
for i= 0:hn-1
  for j= 0:wn-1
    x = floor(j/factor);
    y = floor(i/factor);
    for k= 1:c
      Img_zoomed(i+1, j+1, k) = Img(y+1, x+1, k);
    end
  end
end
 
end


