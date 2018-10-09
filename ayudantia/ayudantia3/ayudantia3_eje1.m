a = [1, -1, 0.9];
b = 1;
[x, n] = impulso(0,-40,200);
h = filter(b, a, x);
[y,l]= escalon(0,-40,200);
q = filter (b,a,y);
subplot 211; plot(n,h); title('respuesta impulso');grid
subplot 212; plot(n,q); title('respuesta escalon');grid
