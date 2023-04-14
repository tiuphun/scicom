function [x] = LUMethod(A, b)
    [L, U, P] = lu(A);

    % Forward elimination: Solve Ly = Pb
    b1 = P * b;
    N = length(b1);
    y = zeros(N,1);
    for k = 1:N
        y(k) = b1(k);
        for i = 1 : k-1
            y(k) = y(k) - y(i) * L(k, i);
        end
        y(k) = y(k) / L(k, k);
    end

    % Backward substitution: Solve Ux = y
    x = zeros(N,1);
    for k = N:-1:1
        x(k) = y(k);
        for i = k+1:N
            x(k) = x(k) - x(i)*U(k,i);
        end
        x(k)=x(k) / U(k,k);
    end

    % Final results
    disp('x = ');
    disp(x);  
end

