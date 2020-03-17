%Understanding images
%Image resizing
%Image type conversion
%Line profile
% you need Matlab software with Image Processing Toolbox
%experimenting image is saved as image.jpg in same folder
% in which matlab code is saved

clc
clear all
close all

%Read the color image
myimage=imread('image.jpg');

%resize the color image into a 256*256 image
mycolorimage=imresize(myimage,[256,256],'nearest');

%convert color image into grey image
mygrayimage=rgb2gray(mycolorimage);

%convert color image into binary image
mybinimage=im2bw(mycolorimage);

%Display original image in 2*2 images
subplot(2,2,1);
imshow(mycolorimage);
title('Original color image');

%Display gray image in 2*2 images
subplot(2,2,2);
imshow(mygrayimage);
title('Gray image');

%Display binary image in 2*2 images
subplot(2,2,3);
imshow(mybinimage);
title('Binary image');

%Display line profile of a line drawn with coordinates
%(10,45) and (50,100)
%Original image in a grid of 2*2 images
subplot(2,2,4);
improfile(mygrayimage,[10,50],[45,100]);
xlabel('Distance')
ylabel('Pixel value')
title('Intensity profile of given line')







 
