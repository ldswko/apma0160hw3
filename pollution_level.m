function [q_vals] = pollution_level(dt, num_steps)

q_vals = zeros(1, num_steps + 1);

for k = 1:num_steps
    q_vals(k+1) = (1 - dt/2) * q_vals(k) + 10 * dt + 5 * dt * sin(2 * k * dt);
end

end