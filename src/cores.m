function[output]= colores(image,color)

swap=image;
c = color;
line_size = size(swap,1);
column_size = size(swap,2);

temp = swap;

for i = 1 : line_size
    for j = 1 : column_size
        temp(i,j) = swap(i,j,c);
    end
end
output = temp;