function[saida]= erosion_g(img,elemento)

B=img;
E=elemento;

tamx = size(B,1);
tamy = size(B,2);

tamx_ee = size(E,1);
tamy_ee = size(E,2);

x_ee = ceil(tamx_ee / 2);
y_ee = ceil(tamy_ee / 2);

a= tamx_ee - x_ee;
c= tamy_ee - y_ee;

C = B;

for i = 1 : tamx
    for j = 1 : tamy
        g = -a;
        h = -c;
        if (B(i,j) == 255)
            for x = 1 : tamx_ee
                for y = 1 : tamy_ee
                    if(((i + g<=tamx) && (i + g > 0)) && ((j + h<=tamy) && (j + h > 0)) && (E(x_ee + g,y_ee + h) == 0))
                        if(B(i+g,j+h) == 0)
                            C(i,j) = 0;
                        end
                    end
                    h = h + 1;
                end
                h = -c;
                g = g + 1;
            end
        end
    end
end

saida = C;