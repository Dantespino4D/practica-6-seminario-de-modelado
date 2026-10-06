
L = 2e-3; 
R = 10;     
C = 10e-6;   
Uin = 32;     


f = 100e3;    
D = 0.40;     


x_i = [0; 0];


tspan = [0, 0.005];


opciones = odeset('MaxStep', 1e-6);

[t, x] = ode45(@(t, x) sistema(t, x, L, R, C, Uin, f, D), tspan, x_i, opciones);


figure;


subplot(2,1,1);
plot(t, x(:, 1), 'LineWidth', 1.5);
grid on;
xlabel('Tiempo (s)');
ylabel('Corriente i_L (A)');
title('Corriente en el Inductor');


subplot(2,1,2);
plot(t, x(:, 2), 'LineWidth', 1.5, 'Color', 'r');
grid on;
xlabel('Tiempo (s)');
ylabel('Voltaje V_c (V)');
title('Voltaje en el Capacitor');
