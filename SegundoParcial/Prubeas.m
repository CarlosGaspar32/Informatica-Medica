% Crear un objeto de puerto serie
s = serialport('COM6',9600);

% Configurar BytesAvailableFcnMode como 'byte'
set(s, 'BytesAvailableFcnMode', 'byte');

% Configurar BytesAvailableFcnCount y BytesAvailableFcn si es necesario
set(s, 'BytesAvailableFcnCount', 10);
set(s, 'BytesAvailableFcn', @miFuncionDeRetorno);

% Abrir el puerto serie
fopen(s);

% Tu función de devolución de llamada personalizada
function miFuncionDeRetorno(src, event)
    % Código para manejar los datos recibidos en el puerto serie
    disp('¡Datos disponibles para lectura!');
end
