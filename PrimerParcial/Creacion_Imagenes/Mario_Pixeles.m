%Mario 16x13 pixeles

R=ones(16,13)
G=ones(16,13)
B=ones(16,13)
% Rojo
R_R = 200/255;
R_G = 3/255;
R_B = 7/255;
% Piel
P_R = 248/255;
P_G = 188/255;
P_B = 99/255;
% Cafe
C_R = 128/255;
C_G = 64/255;
C_B = 0/255;
% Negro
N_R = 0/255;
N_G = 0/255;
N_B = 0/255;
% Azul
B_R = 0/255;
B_G = 0/255;
B_B = 200/255;
% Amarillo
A_R = 230/255;
A_G = 230/255;
A_B = 0/255;
for i=1:16
    for j=1:16
        for k=4:9
            if (i==1 && j==k) %Fila 1
                R(i,j)=R_R
                G(i,j)=R_G
                B(i,j)=R_B
            end
        end
            for k=3:12
                if (i==2 && j==k) %Fila 2
                R(i,j)=R_R
                G(i,j)=R_G
                B(i,j)=R_B
                end
            end
            for k=3:5
                if (i==3 && j==k) %Fila 3
                R(i,j)=C_R
                G(i,j)=C_G
                B(i,j)=C_B
                end
            end
            if (i==3 && (j==6 || j==7 || j==8 || j==10)) % Fila 3
                R(i,j)=P_R
                G(i,j)=P_G
                B(i,j)=P_B
            end
            if i==3 && j==9 %Fila 3
                R(i,j)=N_R
                G(i,j)=N_B
                B(i,j)=N_G
            end
            if i==4 && (j==2 || j==4) %Fila 4
                R(i,j)=C_R
                G(i,j)=C_G
                B(i,j)=C_B
            end
            for k=5:8 %Fila 4
                if (i==4 && j==k)
                R(i,j)=P_R
                G(i,j)=P_G
                B(i,j)=P_B
                end
            end
            for k=10:12 %Fila 4
                if (i==4 && j==k)
                R(i,j)=P_R
                G(i,j)=P_G
                B(i,j)=P_B
                end
            end
            if i==4 && j==3 %Fila 4
                R(i,j)=P_R
                G(i,j)=P_G
                B(i,j)=P_B
            end
            if i==4 && j==9 %Fila 4
                R(i,j)=N_R
                G(i,j)=N_G
                B(i,j)=N_B
            end
            if i==5 && (j==2 || j==4 || j==5) %Fila 5
                R(i,j)=C_R
                G(i,j)=C_G
                B(i,j)=C_B
            end
            if i==5 && (j==3 || j==11 || j==12 || j== 13) %Fila 5
                R(i,j)=P_R
                G(i,j)=P_G
                B(i,j)=P_B
            end
            for k=6:9 %Fila 5
                if i==5 && j==k
                R(i,j)=P_R
                G(i,j)=P_G
                B(i,j)=P_B
                end
            end
            if i==5 && j==10 %Fila 5
                R(i,j)=N_R
                G(i,j)=N_G
                B(i,j)=N_B
            end
            for k=2:3 %Fila 6
                if i==6 && j==k
                R(i,j)=C_R
                G(i,j)=C_G
                B(i,j)=C_B
                end
            end
            for k=4:8 %Fila 6
                if i==6 && j==k
                R(i,j)=P_R
                G(i,j)=P_G
                B(i,j)=P_B
                end
            end
            for k=9:12 %Fila 6
                if i==6 && j==k
                R(i,j)=N_R
                G(i,j)=N_G
                B(i,j)=N_B
                end
            end
            for k=4:11 %Fila 7
                if i==7 && j==k
                R(i,j)=P_R
                G(i,j)=P_G
                B(i,j)=P_B
                end
            end
            if i==8 && (j==3 || j==4) %Fila 8
                R(i,j)=R_R
                G(i,j)=R_G
                B(i,j)=R_B
            end
            for k=6:9
                if i==8 && j==k %Fila 8
                R(i,j)=R_R
                G(i,j)=R_G
                B(i,j)=R_B
                end
            end
            if i==8 && j==5 %Fila 8
                R(i,j)=B_R
                G(i,j)=B_G
                B(i,j)=B_B
            end
            if i==9 && (j==5 || j==8) %Fila 9
                R(i,j)=B_R
                G(i,j)=B_G
                B(i,j)=B_B
            end
            for k=2:4
                if i==9 && j==k %Fila 9
                R(i,j)=R_R
                G(i,j)=R_G
                B(i,j)=R_B
                end
            end
            for k=9:11
                if i==9 && j==k %Fila 9
                R(i,j)=R_R
                G(i,j)=R_G
                B(i,j)=R_B
                end
            end
            if i==9 && (j==6 || j==7) %Fila 9
                R(i,j)=R_R
                G(i,j)=R_G
                B(i,j)=R_B
            end
            for k=1:12
                if i==10 && j==k %Fila 10
                R(i,j)=R_R
                G(i,j)=R_G
                B(i,j)=R_B
                end
            end
            for k=5:8 %Fila 10  
                if i==10 && j==k
                R(i,j)=B_R
                G(i,j)=B_G
                B(i,j)=B_B
                end
            end
            if i==11 && (j==1 || j==2 || j==11 || j==12) %Fila 11
                R(i,j)=P_R
                G(i,j)=P_G
                B(i,j)=P_B
            end
            if i==11 && (j==3 || j==10) %Fila 11
                R(i,j)=R_R
                G(i,j)=R_G
                B(i,j)=R_B
            end
            for k=4:9
                if i==11 && j==k %Fila 11
                R(i,j)=B_R
                G(i,j)=B_G
                B(i,j)=B_B
                end
            end
            if i==11 && (j==5 || j==8) %Fila 11
                R(i,j)=A_R
                G(i,j)=A_G
                B(i,j)=A_B
            end
            for k=1:3 %Fila 12
                if i==12 && j==k
                R(i,j)=P_R
                G(i,j)=P_G
                B(i,j)=P_B   
                end
            end
            for k=10:12 %Fila 12
                if i==12 && j==k
                R(i,j)=P_R
                G(i,j)=P_G
                B(i,j)=P_B
                end
            end
            for k=4:9 %Fila 12
                if i==12 && j==k
                R(i,j)=B_R
                G(i,j)=B_G
                B(i,j)=B_B
                end
            end
            if i==13 && (j==1 || j==2 || j==11 || j==12) %Fila 13
                R(i,j)=P_R
                G(i,j)=P_G
                B(i,j)=P_B
            end
            for k=3:10 %Fila 13
                if i==13 && j==k
                R(i,j)=B_R
                G(i,j)=B_G
                B(i,j)=B_B
                end
            end
            for k=3:5 %Fila 14
                 if i==14 && j==k
                 R(i,j)=B_R
                 G(i,j)=B_G
                 B(i,j)=B_B
                 end
             end
             for k=8:10 %Fila 14
                 if i==14 && j==k
                 R(i,j)=B_R
                 G(i,j)=B_G
                 B(i,j)=B_B
                 end
             end
             for k=2:4 %Fila 15
                 if i==15 && j==k
                 R(i,j)=C_R
                 G(i,j)=C_G
                 B(i,j)=C_B
                 end
             end
             for k=9:11 %Fila 15
                 if i==15 && j==k
                 R(i,j)=C_R
                 G(i,j)=C_G
                 B(i,j)=C_B   
                 end
             end
             for k=1:4 %Fila 16
                 if i==16 && j==k
                 R(i,j)=C_R
                 G(i,j)=C_G
                 B(i,j)=C_B    
                 end
             end
             for k=9:12 %Fila 16
                 if i==16 && j==k
                 R(i,j)=C_R
                 G(i,j)=C_G
                 B(i,j)=C_B
                 end
             end
    end
end
i= cat(3,R,G,B);
imshow(i)