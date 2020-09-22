function output = d_mascara(IE,M,EE)

% E = Imagem erodio M = Mascara EE = Elemento estruturante

line_size = size(IE,1);
column_size = size(IE,2);

A = IE;

for x = 1 : 20;
   A = dilatar_g(A,EE);
   %figure;imshow(A);
   
   for i = 1 : line_size
       for j = 1 : column_size
           if ((M(i,j) == 0) && (A(i,j) == 255))
               A(i,j) = 0;
           end
       end
   end
end
output = A; 