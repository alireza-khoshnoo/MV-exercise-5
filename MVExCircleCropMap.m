clc;
clear;
close all;
img=imread("toCircleCrop.jpg"); % 512 * 512
img2= zeros(512,512,3);
for i=1:512 
    for j=1:512
        if (i-256)*(i-256)+(j-256)*(j-256) <= 256*256
        img2(i, j, :)=img(i, j, :);
        end
    end
end
img2=uint8(img2);
imshow(img2);