f = @(x) exp(x) + exp(-x) - 3*x.*x + x;
a = 2;
b = 4;
epsilon = 0.1;
N = 13;

% Initialize the Fibonacci function
F(1) = 1; F(2) = 2;
for i = 3 : N+2
    F(i) = F(i-1) + F(i-2);
end

% Calculate using Fibonacci method
fprintf("x1 \t  x2 \t   a \t   b\n");
for k = 0 : N-2
    x1 = F(N-1-k)/F(N+1-k) * (b-a)+a;
    x2 = F(N-k)/F(N+1-k) * (b-a)+a;
    f1 = feval(f, x1);
    f2 = feval(f, x2);
    if (f1 < f2)
        b = x2;
    elseif (f1 > f2)
        a = x1;
    else
        a = x1;
        b = x2;
    end
    k = k + 1;
    fprintf("%f %f %f %f\n", x1, x2, a, b);
end

x = (a+b)/2;
disp(x);