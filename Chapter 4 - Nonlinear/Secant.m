% f = @(x) x^2 - sin(x)
% x0 = 0;
% x1 = 0.5;
% eps <= 0.01;

function [] = Secant (f, x0, x1, eps)
    N = 2;      % Iteration counter
    Nmax = 300; % Maximum iteration allowed
    x = x1;
    xprev = x0;

    while abs(feval(f, x)) > eps && N < Nmax
        xnext = x - (feval(f, x) * (x - xprev)) / (feval(f, x) - feval(f, xprev));

        fprintf("%f \t %f \t %f \t %f \t %f \t %f \n", xprev, x, xnext);
        % Update previous and current approximations
        xprev = x;
        x = xnext;
        N = N + 1;
    end

    if N == Nmax
        disp('Secant method failed to converge')
    else
        disp(['Root: ', num2str(x)])
        % disp(['Iterations: ', num2str(it)])
    end
    
% Try this with: `Secant(@(x) x^2 - sin(x), 2, 3, 0.01)` -> Root: 0.88132