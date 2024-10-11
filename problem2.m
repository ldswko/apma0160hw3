T = 4; 

t_vals = linspace(0, T, 2000); 

Q = @(t) 20 - 40*cos(2*t)/17 + 10*sin(2*t)/17 - ...
         300*exp(-0.5*t)/17; 

Q_exact = Q(t_vals); 

dt1 = 0.4;
dt2 = 0.2;
dt3 = 0.1;

num_steps1 = round(T / dt1);
num_steps2 = round(T / dt2);
num_steps3 = round(T / dt3);

q1 = pollution_level(dt1, num_steps1);
q2 = pollution_level(dt2, num_steps2);
q3 = pollution_level(dt3, num_steps3);

t1_vals = linspace(0, T, num_steps1 + 1);
t2_vals = linspace(0, T, num_steps2 + 1);
t3_vals = linspace(0, T, num_steps3 + 1);

figure;
plot(t_vals, Q_exact, 'k-', 'LineWidth', 1.5, 'DisplayName', 'Exact Solution'); 
hold on;
plot(t1_vals, q1, 'bo-', 'DisplayName', 'dt = 0.4'); 
plot(t2_vals, q2, 'ro-', 'DisplayName', 'dt = 0.2'); 
plot(t3_vals, q3, 'go-', 'DisplayName', 'dt = 0.1'); 
hold off;

xlabel('Time in Years');
ylabel('Pollution Level in Metric Tons');
title('Pollution Levels in Relation to Time for Changing t Values');
legend('show');
grid on;