img1 = rgb2gray(imread('wal1.jpg'));
img2 = img1;

Angle = 270 ;

for i = 1: 168
    for j = 1: 300
        img3 = (i * cos (Angle))- (j * sin(Angle));
        x = floor(img3);
        if (x<=0)
            x=1;
        end
        img4 = (i * sin (Angle))+ (j * cos(Angle));
        y = floor (img4);
        if (y<=0)
            y=1;
        end
       
        img2(x,y) = img1(i,j);
    end
end

imshow(img2);