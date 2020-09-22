function[output]= prewitt(image)

swap=image;

vertical = [-1,0,1;-1,0,1;-1,0,1];
horizontal = [-1,-1,-1;0,0,0;1,1,1];

prewitt_vertical = j_generica(swap,vertical);
% figure;imshow(prewitt_vertical);
% title('Prewitt Vertical');

prewitt_horizontal = j_generica(swap,H);
% figure;imshow(prewitt_horizontal);
% title('Prewitt Horizontal');

prewitt_result = prewitt_horizontal + prewitt_vertical;

output = prewitt_result; 