function [] = Chord(f, a, c, eps)
    error = eps + 1000; % so that at first iteration error > eps
    N = 0;
    fprintf("step \t a \t b \t c \t fa \t fb \t fc \n");
    while (error > eps)
        N = N + 1;
        fa = feval(f, a);   fc = feval(f, c);
        b = (a * fc - c * fa) / (fc - fa);
        fb = feval(f, b);
        fprintf("%d \t %f \t %f \t %f \t %f \t %f \t %f \n", N, a, b, c, fa, fb, fc);

        if (fa * fb <= 0)
            c = b; % [a, b] is the new interval
        else
            a = b; % [b, c] is the new interval
    end
    error = abs(fb);
end

% % Try this with `Chord(@(x)x^4 + 2*x^3 - 2, 0, 1, 0.001)` -> 5 iteration