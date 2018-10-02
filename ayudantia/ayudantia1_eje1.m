A=1; B=9; C=4; D=0; E=5; F=1; G=3; H=3; I=6;
t= 0 : 0.3 : 30;
v= exp (-((B+A)/(2*C*(D+E)))*t);
subplot 121; plot(t, v); title('PLOT');
xlabel('Tiempo [seg]'); ylabel('Volts'); grid;
subplot 122; stem(t, v); title('STEM');
xlabel('Tiempo [seg]'); ylabel('Volts'); grid;
% se obtuvieron dos graficos, en ambos se mostraron una exponencial
% decreciente