function [S_root] = heron_root(S, tol)

x_old = S;

for n = 1:5000 
x_new = (1/2)*(x_old + (S/x_old));

    if abs(x_new - x_old) < tol
        break;
    end
x_old = x_new;

end

S_root = x_new; 

disp(S_root);

end
