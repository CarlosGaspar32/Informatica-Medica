% Cargar la imagen
imagen = imread('senor.jpg'); % Reemplaza 'tu_imagen.jpg' con la ruta de tu imagen

% Crear un objeto detector de caras
detector = vision.CascadeObjectDetector();

% Detectar las caras en la imagen
bbox = step(detector, imagen);

% Aumentar el rango del área de interés (por ejemplo, multiplicar el ancho y altura por 1.2)
escala_anc = 300;
escala_alt = 700;

desplazamiento_x = 2000;
desplazamiento_y = 200;
bbox(:, 3) = (bbox(:, 3) * escala_anc) ; % Aumentar el ancho
bbox(:, 4) = (bbox(:, 4) * escala_alt); % Aumentar la altura
bbox(:, 1) = bbox(:, 1) - desplazamiento_x; % Restar 50 píxeles de la coordenada x
bbox(:, 2) = bbox(:, 2) - desplazamiento_y; % Restar 50 píxeles de la coordenada x

% Extraer el primer rostro detectado (si hay más de uno)
if ~isempty(bbox)
    % Obtener las coordenadas del primer rostro detectado
    x = bbox(1, 1);
    y = bbox(1, 2);
    width = bbox(1, 3);
    height = bbox(1, 4);

    % Extraer el rostro de la imagen original
    rostro = imcrop(imagen, [x, y, width, height]);

    % Mostrar la imagen del rostro
    imshow(rostro);
else
    disp('No se encontraron caras en la imagen.');
end

%% 

% Definir la cadena de texto que contiene la palabra "sigma"
syms sigma
eq = sigma^2 +2*sigma;

texto = char(eq)

% Reemplazar la palabra "sigma" por el símbolo σ en la cadena de texto
texto_modificado = regexprep(texto, 'sigma', 'σ');

% Mostrar el texto modificado
disp(texto_modificado);

%%
syms a
txt = a^2 + 2*a + 3;
            %eqLatex = latex(txt);
txt_mod = regexprep(txt, 'a', 'σ');
app.Label_4.Text = [txt_mod]

%% 

for i=1:0
    a = 2
end

%% 

syms sigm s
p = sigm^2 + 0.2986*sigm + 0.8391;
p = vpa(p,3)
wo = 19.58*pi;
B = 8*pi;
a = (s^2+ wo^2)/(s*B);
a = vpa(a,3)

r = subs(p,sigm,a)

r = vpa(r,3)
r = expand(r)
r = simplify(r)
r = vpa(r,3)
rr = 1/r
rr = vpa(rr,3)
d = 7.92e+31*s^4 + 5.94e+32*s^3 + 6.41e+35*s^2 + 2.25e+36*s + 1.13e+39
n = 5.0e+34
coe = coeffs(d)
coe = flip(coe)
ind = coe(1)
d1 = coe / ind
d2 = vpa(d1,6)
