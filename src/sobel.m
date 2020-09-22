function[output]= sobel(image)

swap=image;

vertical = [-1,0,1;-2,0,2;-1,0,1];
horizontal = [-1,-2,-1;0,0,0;1,2,1];

sobel_vertical = j_generica(swap,vertical);
figure;imshow(sobel_vertical);
title('Sobel Vertical');

sobel_horizontal = j_generica(swap,horizontal);
figure;imshow(sobel_horizontal);
title('Sobel Horizontal');

sobel_result=sobel_horizontal + sobel_vertical;

output = sobel_result; 