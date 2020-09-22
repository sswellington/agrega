function T = DilataMascara(I,MM,EE)
%imagem, mascara, elemento    
    m = size(I,1);
    n = size(I,2);
    
    A = I;
    
    for x = 1 : 5
        A = dilatar_g(A,EE);
       %figure; imshow(A);
        
        for i = 1 : m
            for j = 1 : n
                if (MM(i,j) == 0) && (A(i,j) == 255)
                    A(i,j) = 0;
                end
            end
        end
    end
    %A = A-MM;
    
    T=A;
end