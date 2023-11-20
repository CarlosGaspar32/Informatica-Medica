%% Cargar la imagen
im = imread('fotografia.png'); % Reemplaza 'tu_imagen.jpg' con la ruta de tu imagen
figure(1)
imshow(im)

% Crear un objeto detector de caras
detector = vision.CascadeObjectDetector();

% Detectar las caras en la imagen
bbox = step(detector, im);

% Aumentar el rango del área de interés (por ejemplo, multiplicar el ancho y altura por 1.2)
% escala_anc = 1000;
% escala_alt = 1000;
% 
% desplazamiento_x = 1000;
% desplazamiento_y = 1000;
% bbox(:, 3) = (bbox(:, 3) * escala_anc) ; % Aumentar el ancho
% bbox(:, 4) = (bbox(:, 4) * escala_alt); % Aumentar la altura
% bbox(:, 1) = bbox(:, 1) - desplazamiento_x; % Restar 50 píxeles de la coordenada x
% 
% bbox(:, 2) = bbox(:, 2) - desplazamiento_y; % Restar 50 píxeles de la coordenada x


% Extraer el primer rostro detectado (si hay más de uno)
if ~isempty(bbox)
    % Obtener las coordenadas del primer rostro detectado
    x = bbox(1, 1);
    y = bbox(1, 2);
    width = bbox(1, 3);
    height = bbox(1, 4);

    % Extraer el rostro de la imagen original
    rostro1 = imcrop(im, [x, y, width, height]);
    rostro = imcrop(im, [x-200, y-200, width+400, height+400]);

    % Mostrar la imagen del rostro
    figure(2)
    imshow(rostro1);
    figure(3)
    imshow(rostro);
else
    disp('No se encontraron caras en la imagen.');
end

