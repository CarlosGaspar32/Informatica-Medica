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



%% REDIMENSIONAR
% Cargar la imagen
im = imread('senor.jpg'); % Reemplaza 'tu_imagen.jpg' con la ruta de tu imagen

% Crear un objeto detector de caras
detector = vision.CascadeObjectDetector();

% Detectar las caras en la imagen
bbox = step(detector, im);

% Aumentar el rango del área de interés (por ejemplo, multiplicar el ancho y altura por 1.2)
escala_anc = 3;
escala_alt = 7;

desplazamiento_x = 200;
bbox(:, 3) = (bbox(:, 3) * escala_anc) ; % Aumentar el ancho
bbox(:, 4) = (bbox(:, 4) * escala_alt); % Aumentar la altura
bbox(:, 1) = bbox(:, 1) - desplazamiento_x; % Restar 50 píxeles de la coordenada x
%bbox(:, 2) = bbox(:, 2) - desplazamiento_y; % Restar 50 píxeles de la coordenada x

% Extraer el primer rostro detectado (si hay más de uno)
if ~isempty(bbox)
    % Obtener las coordenadas del primer rostro detectado
    x = bbox(1, 1);
    y = bbox(1, 2);
    width = bbox(1, 3);
    height = bbox(1, 4);

    % Extraer el rostro de la imagen original
    rostro = imcrop(im, [x, y, width, height]);

    % Mostrar la imagen del rostro
    imshow(rostro);
else
    disp('No se encontraron caras en la imagen.');
end

