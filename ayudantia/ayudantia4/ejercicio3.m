m = audioread('carpenters.wav'); % carga archivo 'carpenters.wav' en 'm'
y = da(m, 32); % genera el vector 'y' discretizando 'm' con 4 bit
r = m - y; % calcula el ruido de cuantización -> 'r'
n = 10000 : 10400; % rango de muestras a graficar
subplot 311; plot(n, m(n), 'b', n, y(n), 'r');
title('Original (azul) Discretizada (rojo)')
subplot 312; plot(n, r(n)); title('Ruido de cuantización')
subplot 313; hist(r, 100); title('histograma')
audiowrite('discretizada_32.wav',y,44100) % graba 'y' en arch. wav
audiowrite('ruido_cuant_32.wav',r,44100) % graba 'r' en arch. wav
