% === NOTES
% Define the function
% fx = @(x)x^4 + 2*x^3 - 2;
% Calc the value of f(x) at a value of x
% feval(fx, x);

function [] = Bisection (f, a, c, eps)
    error = eps + 1000; % so that at first iteration error > eps
    N = 0;
    fprintf("step \t a \t b \t c \t fa \t fb \t fc \n");
    while (error > eps)
        N = N + 1;
        b = (a + c)/2;
        fa = feval(f, a);
        fb = feval(f, b);
        fc = feval(f, c);
        fprintf("%d \t %f \t %f \t %f \t %f \t %f \t %f \n", N, a, b, c, fa, fb, fc);

        if (fa * fb <= 0)
            c = b; % [a, b] is the new interval
        else
            a = b; % [b, c] is the new interval
    end
    error = abs(fb);
end

% Try this with `Bisection(@(x)x^4 + 2*x^3 - 2, 0, 1, 0.001)` -> 12 iteration
    
