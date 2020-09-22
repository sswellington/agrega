clc;clear all;close all;

PATH = ('../img/');

I = imread(PATH+'w2.jpg','jpg');
figure;imshow(I);


%% layer
R = cores(I,1);
%figure;imshow(R);
%title('red');

B = cores(I,3);
%figure;imshow(B);
%title('Blue');

RB = R-B;
figure;imshow(RB);
title('R-B');


%% mathematical morphology
elemento2 =[255,0,255;
            0,0,0;
            255,0,255];
            
elemento = imread('eee.png','png');

B = binario(RB);
figure;imshow(B);
title('binario: RB');

BC = complemento_binario(B);
figure;imshow(BC);

E = erosion_g(BC,elemento);
figure;imshow(E);
title('Erosion');

MAS = d_mascara(E,BC,elemento2);
figure;imshow(MAS);
title('MASK');


%% edge detection
P = prewitt(MAS);
figure;imshow(P);
title('Prewitt');


%% result 
CPerimetro = contador(P)
CArea = contador(MAS) 

AD = adicao(I,P);
figure;imshow(AD);
title('Resultado');

% DI = RB-P;
% figure;imshow(DI);
% title('Dif');
% 
% R = BC - E;
% figure;imshow(R);
% title('R');

%  H = histograma(RB);
%  title('Histograma');
