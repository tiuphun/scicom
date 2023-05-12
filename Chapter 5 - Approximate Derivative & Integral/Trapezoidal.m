% TRAPEZOIDAL
fx = @(x) x^2 + 3*x + 1;
Fx = @(x) x^3/3 + 3*x^2/2 + x;
exact = feval(Fx, 3) - feval(Fx, 1);
trapezoidal = (feval(fx, 1) + feval(fx, 3)) * (3-1) / 2;
disp(trapezoidal); % = 24

% EXTENDED TRAPEZOIDAL
fx = @(x) x^2 + 3*x + 1;
Fx = @(x) x^3/3 + 3*x^2/2 + x;
a = 1;
b = 3;
Exact = feval(Fx, b) - feval(Fx, a);
Trapezoidal = (feval(fx, a) + feval(fx, b)) * (b-a)/2;
N = 10; h = (b-a)/N;
Sum = 0;
fa = feval(fx, a); fb = feval(fx, b);
for (i = 1 : N-1)
    Sum = Sum + 2*feval(fx, a + i*h);
end
ExtendedTrap = (fa + Sum + fb) * h/2;
disp(ExtendedTrap);