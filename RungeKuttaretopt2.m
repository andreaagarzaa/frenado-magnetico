clear all;

% Inicialización del vector Y.
Y = [5; 0];
%Tiempo de simulación.
T=3;
% definición del tamaño de paso.
global h;
h= 2*10^(-3);

for i=0:T/h
    Data(i+1,:) = [transpose(Y), i*h];
    k1 = Sys2(Y, i);
    k2 = Sys2(Y + (k1*h)/2, i);
    k3 = Sys2(Y + (k2*h)/2, i);
    k4 = Sys2(Y + k3*h, i);
    Y = Y + h*(k1 + 2*k2 + 2*k3 + k4)/6;

end

for n=1:i+1
    if n==1
        Data(n,4)= 0;
    else
        Data(n,4)= (Data(n,2)-Data(n-1,2))/h;
    end
end

figure('Name', 'Posicion', 'NumberTitle', 'off', ...
       'units', 'normalized', 'outerposition', [0 0 1 1]);
plot(Data(:,3),Data(:,1))
title('Gráfica de posición')
xlabel('Altura(m)')
ylabel('Tiempo(s)')

figure('Name', 'Velocidad', 'NumberTitle', 'off', ...
       'units', 'normalized', 'outerposition', [0 0 1 1]);
plot(Data(:,3),Data(:,2))
title('Gráfica de Velocidad')
xlabel('Velocidad en caída m/s')
ylabel('Tiempo(s)')
figure('Name', 'Aceleracion', 'NumberTitle', 'off', ...
       'units', 'normalized', 'outerposition', [0 0 1 1]);

plot(Data(:,3),Data(:,4))
title('Gráfica de Aceleración')
xlabel('Acelaracion(m/s^2')
ylabel('Tiempo(s)')

figure('Name', 'Las tres combinadas', 'NumberTitle', 'off', ...
       'units', 'normalized', 'outerposition', [0 0 1 1]);
   plot(Data(:,3),Data(:,1),Data(:,3),Data(:,2),Data(:,3),Data(:,4))
   title('Las tres Gráficas combinadas')