% Given the dataset:
% x |   0.5     1.0     1.5     2.0
% f |   1.475   2.5     4.375   7.4
% -> Since there are 4 points in this dataset, the interpolation polynomial must be in 3rd degree. 

f = [1.475   2.5     4.375   7.4]';
x = [0.5     1.0     1.5     2.0];
% Plot 4 datapoints
plot(x, f, 'bo');
hold on;

V = vander(x); % Create Vandermode matrix
s = inv(V) * f;
disp(s);

% Plot the curve
fx = @(x) s(1) + s(2) * x + s(3) * x.^2 + s(4) * x.^3;
X = -2 : 0.5 : 4;
Y = feval(fx, X);
plot(X, Y, 'r-');