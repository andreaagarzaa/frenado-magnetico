function Ydot = Sys(Y, i)

    % Parametros del sistema.
    g=9.81;
    MU= 150000;
    M0=4*pi*(10^-7);
    I=50;
    a= 5;
    m= 0.01;
    
    
    % Variable para graficar respecto al tiempo.
    global h;
    
    % Estados y variables de control.
    y1 = Y(1);
    y2 = Y(2);

    

        
    % Calculo de la derivada del vector de estados.
    Ydot = [y2;
            -g-((3*MU*M0*I*a^2)/(2*m))*(y1/(y1^2+a^2)^(5/2))];
            
            
end