m = audioread('carpenters.wav'); % carga arch. 'carpenters.wav' en 'm'
y = da(m, 4); % genera el vector 'y' discretizando 'm' con 4 bit
r = m - y; % calcula el ruido de cuantización -> 'r'

n = 10000 : 10400; % rango de muestras a graficar
subplot 211; plot(n, m(n), 'b', n, y(n), 'r');
title('Original (azul) Discretizada (rojo)')
subplot 212; plot(n, r(n)); title('Ruido de cuantización')
wavwrite(y, 44100, 16, 'discretizada.wav') % graba 'y' en arch. wav
wavwrite(r, 44100, 16, 'ruido_cuant.wav') % graba 'r' en arch. wav