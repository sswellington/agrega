function[output] = histograma(image)

swap=(image);

line_size = size(swap,1);
column_size = size(swap,2);

for c = 1 : 256
    vet(c) = 0;
end

for i = 1 : line_size
    for j = 1 : column_size
        vet(swap(i,j)+1) = vet(swap(i,j)+1)+1;
        %vet((i+j)-1) = swap(i,j);
    end
end
output = bar(vet);