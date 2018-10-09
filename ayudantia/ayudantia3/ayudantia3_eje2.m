w = [0 : 0.002 : 1]*pi; % vector de frecuencia
S = 70; % longitud de la secuencia
n = [1 : S]; % vector de tiempo
% Pulso angosto
P1 = 20; % ancho del pulso
x1 = [ones(1, P1) zeros(1, S-P1)]; % secuencia pulso
[X1] = dtft(x1, n, w);
% Pulso ancho
P2 = 40; % ancho del pulso
x2 = [ones(1, P2) zeros(1, S-P2)]; % secuencia pulso
[X2] = dtft(x2, n, w);
P3 = 60;
x3 = [ones(1, P3) zeros(1, S-P3)]; % secuencia pulso
[X3] = dtft(x3, n, w);

subplot 321; stem(n, x1);title('20 pulsos'); xlabel('n'); grid
subplot 322; plot(w/pi, abs(X1));title('DTFT'); xlabel('w / Pi [rad/m]'); grid
subplot 323; stem(n, x2);title('40 pulsos'); xlabel('n'); grid
subplot 324; plot(w/pi, abs(X2));title('DTFT'); xlabel('w / Pi [rad/m]'); grid
subplot 325; stem(n, x3);title('60 pulsos'); xlabel('n'); grid
subplot 326; plot(w/pi, abs(X3));title('DTFT'); xlabel('w / Pi [rad/m]'); grid