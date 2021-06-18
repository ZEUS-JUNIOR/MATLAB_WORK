

i = imread('exemple.jpeg');
imshow(i);
im4 = multibandread('exemple.jpeg', [31 73 5], ...
'int16', 74880, 'bil', 'ieee-be', ...
{'Band', 'Range', [1 3]} );


I = imread('exemple.jpeg');
imshow(I);
figure
imshow(im4);
title('Composite des vrais couleurs ameliorés')
text(size(im4,2),size(im4,1) + 15,'Image courtesy of space imaging, llc','Fontsize',7,'HorizontalAlignment','right')
figure;
imhist(im4(:,:,1));
change = imadjust(im4,stretchlim(im4));
figure;
imshow(change);
decorr = decorrstretch(im4,'Tol',0.01);
figure;
imshow(decorr);