% Methods: Forward Euler Method, 2nd-order Runge-Kutta
% -> Initial Value Problem (IVP)
% * Plot the graph: correct solution + approx solution
% * Evaluation of error

% Methods: Forward Euler Method, 2nd-order Runge-Kutta
% -> Initial Value Problem (IVP)
% * Plot the graph: correct solution + approx solution
% * Evaluation of error

% Define the function
f = @(x, y) -y + x + 1;

% Define the initial conditions
x0 = 0;
y0 = 1;

% Define the step size
h = 0.01; % Edit this value to see the different between Range-Kutta and the correct solution better

% Define the range of x values
x = x0:h:1;

% Initialize the arrays for the approximate and correct solutions
y_euler = zeros(size(x));
y_rk2 = zeros(size(x));
y_correct = zeros(size(x));

% Set the initial values
y_euler(1) = y0;
y_rk2(1) = y0;
y_correct(1) = y0;

% Implement the Forward Euler Method
for i = 2:length(x)
    y_euler(i) = y_euler(i-1) + h*f(x(i-1), y_euler(i-1));
end

% Implement the 2nd-order Runge-Kutta Method
for i = 2:length(x)
    k1 = h*f(x(i-1), y_rk2(i-1));
    k2 = h*f(x(i-1) + h/2, y_rk2(i-1) + k1/2);
    y_rk2(i) = y_rk2(i-1) + k2;
end

% Calculate the correct solution
for i = 2:length(x)
    y_correct(i) = x(i) + exp(-x(i));
end

% Plot the results
plot(x, y_euler, 'r', x, y_rk2, 'g', x, y_correct, 'b');
legend('Forward Euler Method', '2nd-order Runge-Kutta Method', 'Correct Solution');
xlabel('x');
ylabel('y');
title('Approximate and Correct Solutions');

% Calculate the errors
error_euler = abs(y_correct - y_euler);
error_rk2 = abs(y_correct - y_rk2);

% Print the errors
fprintf('Evaluation of error of Forward Euler Method: %f\n', max(error_euler));
fprintf('Evaluation of error of 2nd-order Runge-Kutta Method: %f\n', max(error_rk2));
