%{ Given the function
    f(x1, x2) = 2(x1 + 1)^2 + 8 * (x2 + 3)^2 + 5*x1 + x2
Solve the problem to minimize f over R^2 using Newton's methods. Start at the points (10, 10)^T and (-5, -5)^T.
Towards which point do the methods converge? How many iterations are required to reach the solution?
%}

% Define the objective function
f = @(x1, x2) 2*(x1+1)^2 + 8*(x2+3)^2 + 5*x1 + x2;

% Define the gradient of the objective function
grad_f = @(x1, x2) [4*(x1+1) + 5; 16*(x2+3) + 1];

% Define the Hessian matrix of the objective function
hess_f = @(x1, x2) [4, 0; 0, 16];

% Define the Newton's method
newton_method = @(x0) x0 - hess_f(x0(1), x0(2)) \ grad_f(x0(1), x0(2));

% Initial points
x0_1 = [10; 10];
x0_2 = [-5; -5];

% Initialize variables
max_iterations = 100;
tolerance = 1e-6;
iteration = 0;
x_prev_1 = x0_1;
x_prev_2 = x0_2;

% Perform Newton's method
while iteration < max_iterations
    iteration = iteration + 1;
    
    % Update x using Newton's method
    x_1 = newton_method(x_prev_1);
    x_2 = newton_method(x_prev_2);
    
    % Check convergence
    if norm(x_1 - x_prev_1) < tolerance
        fprintf('Newton''s method converged for initial point (10, 10) after %d iterations.\n', iteration);
        fprintf('Optimal point: (%f, %f)\n', x_1(1), x_1(2));
        break;
    end
    
    if norm(x_2 - x_prev_2) < tolerance
        fprintf('Newton''s method converged for initial point (-5, -5) after %d iterations.\n', iteration);
        fprintf('Optimal point: (%f, %f)\n', x_2(1), x_2(2));
        break;
    end
    
    % Update previous x values
    x_prev_1 = x_1;
    x_prev_2 = x_2;
end

if iteration == max_iterations
    fprintf('Newton''s method did not converge within the maximum number of iterations.\n');
end

