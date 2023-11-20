%% Recepción para ECG

delete(instrfindall);
close all;clear all;clc
% ECG = load("ECG.mat")
% ECG = ECG.val;
obj1 = instrfind('Type','serial','BaudRate',9600,'Port','COM6');
% 
if isempty(obj1)
    obj1 = serial('COM6');
else
    fclose(obj1);
    obj1 = obj1(1);
end
TD = 1;
%Comenzar comunicación
fopen(obj1);
datavector = 0;
%figure(1)
i=1;

while(TD == 1)
    tic
    data = fscanf(obj1);
    
    if str2num(data) == 2000 % Interrumpir Serial
        TD = 9;
        break
    else
        %Extaer datos de la Trama
        disp(data);
        a=strfind(data,'A');
        b=strfind(data,'T');
        c=strfind(data,'P');
        d=strfind(data,'C');
        
        ECG = str2num(data(a+1:b-1));
        Temp = str2num(data(b+1:c-1));
        Pulso = str2num(data(c+1:d-1));

        %Gráfica
        datavector = cat(2,datavector,ECG);

        if length(datavector) > 200
            grafica = datavector(i-199:i);
            t = (2*i/100)-(399/100):2/100:2*i/100;
            plot(t,grafica);
            %axis([2*i/100-(399/100),2*i/100,0,255])
        else
            t = 0:2/100:2*i/100;
            plot(t,datavector);
            axis([0,4,0,255])
        end
        
        pause(1/1000);
        i=i+1;
        time = toc
    end
end
errordlg('fin');
fclose(obj1);



% 
% data1 = fscanf(obj1);
% data1 = '';
% [n m]=size(data1);
% 
% if m==14
%     datos = data1(10:12);
%     datos(i) = str2num(datos);
% end