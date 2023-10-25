function Ydot = Sys2(Y, i)

    % Parametros del sistema.
    g=9.81;
    MU= 200000;
    M0=4*pi*(10^-7);
    R=0.01;
    a= 1;
    m= 0.01;
    
    
    % Variable para graficar respecto al tiempo.
    global h;
    
   
    y1 = Y(1);
    y2 = Y(2);

    

        
    % Calculo de la derivada del vector de estados.
    Ydot = [y2;
            -g-((9*((MU*M0)^2)*a^4)/(m*4*R))*(y2*y1^2)/(y1^2+a^2)^(5)];
            
            
end