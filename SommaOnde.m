A1 = 1.2; 
A2 = 1;   
f1 = 6;  
f2 = 4;         
phi1 = 0; 
phi2 = pi/4; 

v1 = 0.1; 
v2 = 0.05;  

t = 0:0.01:2*pi;
x = linspace(0, 2*pi, 100); 

figure;
hold on;

for k = 1:200
    y1 = A1 * sin(f1 * (x - v1 * k) + phi1);
    y2 = A2 * sin(f2 * (x - v2 * k) + phi2);
    y_sum = y1 + y2;

    cla;

    plot(x, y1+4, 'b', 'DisplayName', 'Onda 1'); 
    hold on;
    plot(x, y2, 'p', 'DisplayName', 'Onda 2');
    plot(x, y_sum-4, 'k', 'DisplayName', 'Somma'); 

    axis([0 2*pi -7 6]);
    xlabel('x');
    ylabel('y');
    title('2 waves and their sum');
    legend('show');
    grid on;

    pause(0.05);
end
