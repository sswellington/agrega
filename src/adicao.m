function[output]= adicao(image,sobel)

edge_filter=filter;
swap=image;

line_size = size(swap,1);
column_size = size(swap,2);

temp=swap;

for i = 1 : line_size
    for j = 1 : column_size
        temp(i,j,1) = swap(i,j,1)- edge_filter(i,j,1);
    end
end

output = temp;