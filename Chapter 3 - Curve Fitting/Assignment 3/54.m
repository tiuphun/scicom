% Given the points: (−2, 0), (0, 3), (4, 4)
% (a) Find the least-squares exponential f (x) = ae^X + b for the points.
% (b) Plot f (x) along with the points.
% (c) Use f (x) to estimate f′(1).

f = @(t) w(1) * exp(t) + w(2);
XX = -3:4; YY = feval(f, XX);
plot(XX, YY, 'b-');
hold on;
plot(x, y, 'r*');

x = [-2, 0, 3];
y = [0, 3, 4];
N = length(x);
A = [sum(2*exp(2*x)), sum(2*exp(x)); sum(2*exp(x), 2];
b = [sum(2*exp(x).*y) ; sum(2*y)];
w = inv (A) * b; 

f = @(t) w(1) *exp (t) + w(2); 
XX = -3:0.2:4; YY = feval (f, XX);
plot (XX, YY, 'b-');
hold on; 
plot (x,y,'r*');