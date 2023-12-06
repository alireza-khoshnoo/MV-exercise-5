clc;
clear;
close all;
img=imread("toCircleCrop.jpg"); % 512 * 512
img2= zeros(512,512,3);
r1=256;
cx= 256;
cy=256;
for x1=1:512 
    for y1=1:512
        r2=sqrt((x1-cx)*(x1-cx) + (y1-cy)*(y1-cy));
        if y1==256
            tetha= 0;
        else
            tetha= atand((-1*y1+cy)/(x1-cy));
        end
        if x1<cx
            tetha= tetha+180;
        end  
        
        % dx= round((r2*106/362)*cosd(tetha)*abs(tand(tetha)));
        % x2= x1- dx;
        % dy= round((r2*106/362)*sind(tetha)*abs (tand(tetha)));
        % y2= y1+ dy;

        dx= round((r2*106/362)*cosd(tetha)*abs(sind(tetha)*2/sqrt(2)));
        x2= x1- dx;
        dy= round((r2*106/362)*sind(tetha)*abs(cosd(tetha)*2/sqrt(2)));
        y2= y1+ dy;

        % dx= round((r2*106/362)*cosd(tetha)*(1-abs(sind(tetha))));
        % x2= x1- dx;
        % dy= round((r2*106/362)*sind(tetha)*(1-abs(cosd(tetha))));
        % y2= y1+ dy;

        % dx= round((r2*106/362)*cosd(tetha)*abs(cosd(tetha)));
        % x2= x1- dx;
        % dy= round((r2*106/362)*sind(tetha)*abs(sind(tetha)));
        % y2= y1+ dy;
               
        img2(y2, x2, :)=img(y1, x1, :);
    end
end
img2=uint8(img2);
imshow(img2);
