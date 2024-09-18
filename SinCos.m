radius = 1;  
nFrames = 200;    
theta = linspace(0, 360, nFrames); 
figure;

for k = 1:nFrames
    angle_rad = deg2rad(theta(k)); 
    x = radius * cos(angle_rad);
    y = radius * sin(angle_rad);
    clf;

    subplot(3, 1, 1);
    theta_circle = linspace(0, 2*pi, 100);
    plot(radius * cos(theta_circle), radius * sin(theta_circle), 'k', 'LineWidth', 1.5);
    hold on;
    plot([0 x], [0 y], 'r', 'LineWidth', 2); 
    plot(x, y, 'bo', 'MarkerFaceColor', 'b'); 
    
    arc_theta = linspace(0, angle_rad, 100);
    arc_x = [0 radius * cos(arc_theta)];
    arc_y = [0 radius * sin(arc_theta)];
    plot(arc_x, arc_y, 'g', 'LineWidth', 2);

    axis equal;
    axis([-1.5 1.5 -1.5 1.5]);
    xlabel('X');
    ylabel('Y');
    title('Angle in Circle');
    grid on;

    subplot(3, 1, 2);
    plot(theta(1:k), sin(deg2rad(theta(1:k))), 'b', 'LineWidth', 2);
    xlabel('Angle (deg)');
    ylabel('sin(\theta)');
    title('Sin');
    grid on;
    axis([0 360 -1.5 1.5]);

    subplot(3, 1, 3);
    plot(theta(1:k), cos(deg2rad(theta(1:k))), 'r', 'LineWidth', 2);
    xlabel('Angle (deg)');
    ylabel('cos(\theta)');
    title('Cos');
    grid on;
    axis([0 360 -1.5 1.5]);
    
    pause(0.05);
end
