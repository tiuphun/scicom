% 
{Write MATLAB function to find minimal of a single variable and unimodal function:
* Input: function f, interval [a,b], error epsilon
* Ouput: minimal point, minimal value
Apply to find minimum of:
f(x) = e^x + e^(-x) - 3x^2 + x in [2,4] with error = 0.1
%}

f = @(x) exp(x) + exp(-x) - 3*x.*x + x;
a = 2;
b = 4;
epsilon = 0.1;

while (abs(b-a) > 2*epsilon)
    x1 = a + (b-a)/2 - epsilon/2;
    x2 = a + (b-a)/2 + epsilon/2;
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
end

x = (a+b)/2;
disp(x);