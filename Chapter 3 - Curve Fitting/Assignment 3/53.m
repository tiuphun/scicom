% Given the points: (-1, 3); (0, 1); (1, 2); (3, 9)
% a) Find the least squares parabola f(x) = ax^2 + bx + c for the points
% b) Plot f(x) along with the points
% c) Use f(x) to estimate all x so that f(x) = 10

x = [-1 0 1 3];
y = [3 1 2 9];
s0 = length(x); 
s1 = sum(x); 
s2 = sum(x.^2);
s3 = sum(x.^3); 
s4 = sum(x.^4);

A = [s4 s3 s2; s3 s2 s1; s2 s1 s0];
b = [sum(x.^2.*y); sum(x.*y);sum(y)];
c0 = A\b;
c = polyfit(x,y,2); % Find a regression polynomial that matches the data

fprintf("c0 = %f; c = %f \n",c0, c); % Returns the calculated coefficient + the coefficient found by polyfit
xx = 1:0.1:8;
yy = polyval(c0,xx);
plot(x,y,'o',xx,yy);

% Find the x values corresponding to f(x) = 10
p = [c0(1) c0(2) c0(3)-10]; % Define a new polynomial p(x) = ax^2 + bx + c - 10
x_estimated = roots(p); % Compute the roots of p(x) to find the x values where f(x) = 10

fprintf("Estimated values of x corresponding to f(x) = 10: %s\n", mat2str(x_estimated));

xx = -10:0.1:10;
yy = polyval(c0,xx);

plot(x,y,'o',xx,yy);
title('Quadratic Regression');
xlabel('x');
ylabel('y');

% -------

x = [-1 0 1 3];
f = [ 3 1 2 9];
N = length(x);
SumX1 = sum(x);
SumX2 = sum(x.*x);
SumX3 = sum(x.*x.*x);
SumX4 = sum(x.*x.*x.*x);

A = [N, SumX1, SumX2; SumX1, SumX2, SumX3; SumX2, SumX3, SumX4];
SumF = sum(f);
SumFX1 = sum(f.*x);
SumFX2 = sum(f.*x.*x);

b = [SumF; SumFX1; SumFX2];
solution = inv(A) * b;

XX = -2:5; YY = polyval(solution, XX);
plot(XX, YY, 'b-'); hold on;
plot(x, f, 'r*');