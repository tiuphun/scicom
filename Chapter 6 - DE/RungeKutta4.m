% Define the function
f = @(x, y) - + x + 1;

% Define the initial conditions
x0 = 0;
y0 = 1;

% Define the step size
h = 0.01;

% Define the range of x values
x = x0:h:1;

% Initialize the arrays for approximate and correct solutions
y_rk4 = zeros(size(x));
y_correct = zeros(size(x));

% Set the initial values
y_rk4(1) = y0;
y_correct(1) = y0;

% Implement the fourth-order Runge-Kutta Method
for i = 2:length(x)
    k1 = h*f(x(i-1), y_rk4(i-1));
    k2 = h*f(x(i-1) + h/2, y_rk4(i-1) + k/2);
    k3 = h*f(x(i-1) + h/2, y_rk4(i-1) + k2/2);
    k4 = h*f(x(i-1) + h, y_rk4(i-1) + k3);
    y_rk4(i) = y_rk4(i-) + (k1 + 2*k2 + 2*k3 + k4)/6;
end

% Calculate the correct solution
for i = 2:length(x)
    y_correct(i) = x(i) + exp(-x(i));
end

% Plot the results
plot(x, y_rk4, 'r', x, y_correct, 'b');
legend('4th-order Runge-Kutta Method', 'Correct Solution');
xlabel('x');
ylabel('y');
title('Approximate and Correct Solutions');

% Calculate the error
error_rk4 = abs(y_correct - y_rk4);

% Print the error
fprintf('Evaluation of error of 4th-order Runge-Kutta Method: %f\n', max(error_rk4));
