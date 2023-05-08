% Given the points: (1, 1)  (5,2)   (6,2)   (8,3)
% a) Find the least squares line f(x) = mx + b for the points
% b) Plot f(x) along with the points
% c) Use f(x) to estimate y when x = 20

x = [1; 5; 6; 8];
y = [1; 2; 2; 3];
A = [1 1; 1 5; 1 6; 1 8];
w = inv(A'* A) * A' * y;
XX = 0:10;
YY = polyval(w, XX);
plot(XX, YY, 'b-');
hold on;
plot(x, y, 'r*');
