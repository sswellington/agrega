function[output] = robert(image)

swap=double(image);

line_size = size(swap,1);
column_size = size(swap,2);

robert_left = swap;
robert_right = swap;

for i = 1 : line_size-1
    for j = 1 : column_size-1
        robert_left(i,j)= swap(i,j) - swap(i+1,j+1);
    end
end

figure;imshow(uint8(robert_left));
title('Robert Left');

for i = 1 : line_size-1
    for j = 1 : column_size-1
        robert_right(i,j+1)= swap(i+1,j) - swap(i,j+1);
    end
end

figure;imshow(uint8(robert_right));
title('Robert Right');

robert_result = robert_left + robert_right;
output = uint8(robert_result);
