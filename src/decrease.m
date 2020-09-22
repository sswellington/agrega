 function[saida]= decrease(entrada)
% tem q salvar o arquivo c/ o nome da function
B=entrada;

tamx = size(B,1);
tamy = size(B,2);

C = B;
y = 1;
l = 1;

for i = 1 : tamx/2
    %percorre a linha :
    l = i*2;
    for j = 1 : tamy/2
         %percorre a coluna nos numeros pares 4,6;...
         y=j*2; 
         %4 => da o valor  da claridade
         D(i,j) = (B(l-1,y)/4)+ (B(l-1,y-1)/4) + (B(l,y)/4)+ (B(l,y-1)/4);
    end
    %zera as variaveis de coluna, para evitar o estouro de variaveis
    y = 1;
end
%Tem q ser usada a variavel D, e não pode usar C, pois isso faria a foto 
%subescrever-se
saida = D;
        
            