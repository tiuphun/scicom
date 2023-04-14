function [] = inv(A, b)
    [L, U, P] = lu(A);
    % Forward elimination: Solve Ly = Pb
    y = L \ P * b;
    % Backward substitution: Solve Ux = y
    x = U \ y;
    disp('x = ');
    disp(x);    
end

