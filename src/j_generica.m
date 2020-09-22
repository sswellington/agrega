function[output] = j_generica(image,filter)

swap=double(image);

line_size = size(swap,1);
column_size = size(swap,2);

temp = swap;

for i = 2 : line_size-1
    for j = 2 : tamy-1
        soma=0;
         for x = -1 : 1
            for y = -1 : 1
                   soma=soma+(swap(i+x,j+y))*filter(x+2,y+2);
            end   
         end
         temp(i,j) = abs(soma); 
    end
end
output = uint8(temp);           