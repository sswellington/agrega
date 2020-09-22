function[output]= abertura(I)

% opening: erosion+dilatar

ee = [0,255,0; 255,255,255; 0,255,0];

erosion = erosion_g(I,ee);
opening = dilatar_g(E,ee);

output = opening;