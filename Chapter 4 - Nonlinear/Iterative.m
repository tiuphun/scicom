f = @(x) 2*x*x - x - 1;
g1 = @(x) 2*x*x -1;
g2 = @(x) sqrt((x - 1) / 2);
x0 = 0.1; 
epsilon = 0.001;
error = 1;
iter = 0;

fprintf('Iteration\t x0\t g1x0\t Error\n');
while (error > epsilon)
    iter = iter + 1;
    g1x0 = feval (g1, x0);
    error = abs(g1x0 - x0);
    fprintf ('%d\t %f\t %f\t %f\n', iter, x0, g1x0, error);
    x0 = g1x0;
end

% function [] = Iterative (x0, gx, epsilon, error)

% Try this with different values of x0 and gx: x0 = {0.1, 0.2, 0.5, 0.6}; gx = {g1; g2}