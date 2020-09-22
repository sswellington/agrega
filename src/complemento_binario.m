 function[output]= complemento_binario(input)

swap=input;

line_size = size(swap,1);
column_size = size(swap,2);

temp = swap;

    for i = 1 : line_size
        for j = 1 : column_size
            if temp(i,j) == 255;
                D(i,j) = 0;
            else
                D(i,j)= 255;
            end
        end
    end
output = D;