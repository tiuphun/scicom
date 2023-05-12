fx = @(x) x^2 + 3*x + 1;
a = 1;
b = 3;

h = (b-a)/2;
fx0 = feval(fx, a);
fx1 = feval(fx, a+h);
fx2 = feval(fx, b);
Simpson13 = (fx0 + 4*fx1 + fx2) * h/3;
disp(Simpson13); % 22.667