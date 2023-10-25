clear all;

% Inicialización del vector Y.
Y = [1; 0];
%Tiempo de simulación.
T=3;
% definición del tamaño de paso.
global h;
h= 2*10^(-3);

for i=0:T/h
    Data(i+1,:) = [transpose(Y), i*h];
    k1 = Sys(Y, i);
    k2 = Sys(Y + (k1*h)/2, i);
    k3 = Sys(Y + (k2*h)/2, i);
    k4 = Sys(Y + k3*h, i);
    Y = Y + h*(k1 + 2*k2 + 2*k3 + k4)/6;

end
figure('Name', 'Simulation', 'NumberTitle', 'off', ...
       'units', 'normalized', 'outerposition', [0 0 1 1]);
plot(Data(:,end),Data(:,1))
plot(Data(:,end),Data(:,2))