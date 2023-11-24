clc;
clear;
close all;
img=imread("toCircleCrop.jpg"); % 512 * 512

for i=1:512 
    for j=1:512
        if (i-256)*(i-256)+(j-256)*(j-256) > 256*256
        img(i, j, 1)=0;
        img(i, j, 2)=0;
        img(i, j, 3)=0;
        end
    end
end
img=uint8(img);
imshow(img);