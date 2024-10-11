function [S_root] = bakhshali_root(S, tol)

y_old = S;  
a_k = (S - y_old^2) / (2 * y_old);
b_k = y_old + a_k;
y_new = b_k - (a_k^2) / (2 * b_k);
  
while abs(y_new - y_old) > tol
    y_old = y_new;
    a_k = (S - y_old^2) / (2 * y_old);
    b_k = y_old + a_k;
    y_new = b_k - (a_k^2) / (2 * b_k);
end

S_root = y_new;

disp(S_root);

end