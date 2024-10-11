function [M_vals] = national_income(M0, M1, alpha, beta, g, max_iters, tol)
    
M_vals = zeros(1, max_iters + 1);
M_vals(1) = M0;
M_vals(2) = M1;
    
for k = 2:max_iters
    Ck = alpha * M_vals(k);
    Ck_minus_1 = alpha * M_vals(k-1);
    Ik = beta * (Ck - Ck_minus_1);
    Mk_plus_1 = Ck + Ik + g;
    M_vals(k+1) = Mk_plus_1;
    
    if abs(M_vals(k+1) - M_vals(k)) < tol
       M_vals = M_vals(1:k+1);
       break;
    end
end

end