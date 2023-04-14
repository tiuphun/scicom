% f     = @(x) x^2 - sin(x);
% df    = @(x) 2*x - cos(x);
function [] = Newton (f, df, x0, eps)
    N = 0; % Iteration counter
    Nmax = 300; % Maximum iteration allowed
    x = x0;

    while abs(feval(f, x)) > eps && N < Nmax
        x = x - feval(f, x)/feval(df, x);
        N = N + 1;
    end

    if N == Nmax
        disp('Newton method failed to converge')
    else
        disp(['Root: ', num2str(x)])
        % disp(['Iterations: ', num2str(it)])
    end
end

% Try this with: `Newton(@(x) x^2 - sin(x), @(x) 2*x - cos(x), 2, 0.1)` -> Root: 0.88907
