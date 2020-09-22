function output = contador(e)

swap=e;

line_size = size(swap,1);
column_size = size(swap,2);

C = swap;

c =0;
    for i = 1 : line_size
        for j = 1 : column_size
           if C(i,j) == 255;
                c = c + 1;
            end
        end
    end
output = c;
end