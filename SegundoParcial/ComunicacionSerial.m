clc; clear; close;

% Crear el objeto de puerto serie
s = serialport("COM6", 9600);

% Abrir el puerto serie
fopen(s);

time = 0:1/100:10;
funcion = sin(2 * time);

figure()
drawnow

while ishandle(1)
    % Verificar si hay datos disponibles para lectura
    if s.BytesAvailable > 0
        %valor = fscanf(s, '%s'); % Leer un carácter desde Arduino
        valor = read(s, 1, "char"); % Leer un carácter desde Arduino
        disp(valor)
        valor = num2str(valor);
        if strcmp(valor, '1') % Si Arduino envía '1'
            flushinput(s) %Importante limpiar el buffer
            for i = 1:length(time)
                plot(time(1:i), funcion(1:i))
                axis([0 10 -1 1])
                pause(1/100);
                if s.BytesAvailable > 0
                    break;
                end
            end
        
        end
    end
end

% Cerrar el puerto serie y eliminar el objeto
fclose(s);
delete(s);
