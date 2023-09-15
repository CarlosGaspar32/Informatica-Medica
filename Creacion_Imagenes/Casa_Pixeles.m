%CASA PIXELES 10 x 10 pixeles
clc;clear;

R = ones(10,10)
G = ones(10,10)
B = ones(10,10)
%Color Rojo
R_R = 133/255;
R_G = 2/255;
R_B = 7/255;
%Color Azul
B_R = 157/255;
B_G = 214/255;
B_B = 241/255;
%Naranja
O_R = 243/255;
O_G = 138/255;
O_B = 13/255;
%Verde
G_R = 137/255;
G_G = 207/255;
G_B = 59/255;


for i=1:10
    for j=1:10
        if(i==1 && j==7)%Fila 1
            R(i,j)=0;
            G(i,j)=0;
            B(i,j)=0;
        end
        for k=4:8
            if(i==2 && j==k)%Fila 2
                R(i,j)=R_R;
                G(i,j)=R_G;
                B(i,j)=R_B;
            end
        end
        if(i==3 && (j==3 || j==4 || j==8 || j==9))%Fila 3 rojo
                R(i,j)=R_R;
                G(i,j)=R_G;
                B(i,j)=R_B;
            end
        for k=5:7%Fila 3 azul
            if(i==3 && j==k)
                R(i,j)=B_R;
                G(i,j)=B_G;
                B(i,j)=B_B;
            end
        end
        for k=2:10
            if(i==4 && j==k)%Fila 4
                R(i,j)=R_R;
                G(i,j)=R_G;
                B(i,j)=R_B;
            end
        end
        for k=3:9%Fila 5 naranja
            if(i==5 && j==k)
                R(i,j)=O_R;
                G(i,j)=O_G;
                B(i,j)=O_B;
            end
        end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        for k=3:3:9%Fila 6 naranja
            if((i==6 || i==7) && j==k)
                R(i,j)=O_R;
                G(i,j)=O_G;
                B(i,j)=O_B;
            end
        end
        if((i==6 || i==7) && (j==4 || j==5)) %Ventana
            R(i,j)=B_R;
            G(i,j)=B_G;
            B(i,j)=B_B;
        end
        if((i==6 || i==8 || i==9) && (j==7 || j==8))%Puerta verde
            R(i,j)=G_R;
            G(i,j)=G_G;
            B(i,j)=G_B;
        end
        if((i==8 || i==9) && (j==3 || j==4 || j==5 || j==6 || j== 9))%Naranja
            R(i,j)=O_R;
            G(i,j)=O_G;
            B(i,j)=O_B;
        end
        for k=2:8:10
            if(i==9 && j==k)
                R(i,j)=G_R;
                G(i,j)=G_G;
                B(i,j)=G_B;
            end
        end
    end
end
%Manija
R(7,7)=R_R;
G(7,7)=R_G;
B(7,7)=R_B;
%Punto Puerta
R(7,8)=G_R;
G(7,8)=G_G;
B(7,8)=G_B;


i= cat(3,R,G,B);
imshow(i)