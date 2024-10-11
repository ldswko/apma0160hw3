function [S_root] = heron_root(S, tol)

x_old = S;
x_new = 0.5 * (x_old + S / x_old);

while abs(x_new - x_old) > tol
    x_old = x_new;
    x_new = 0.5 * (x_old + S / x_old);
end

S_root = x_new;

disp(S_root);

end