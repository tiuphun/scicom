x0 = -2; x1 = 2; y0 = -1; y1 = 1; h = 0.01;
fxy = @(x, y) x.^2.*y - 2*y.^2;
DfX = @(x, y) 2*x.*y;
M = (x1 - x0)/h + 1; N = (y1 - y0)/h + 1;
for i = 1:M
    for j = 1:N
        Exact_DfX(i, j) = feval(DfX, x0 + i*h, y0 + j*h);
    end
end
for i = 2:M-1
    for j = 1:N
        Appr_DfX(i, j) = (feval(fxy, x0 + (i+1)*h, y0 + j*h) - feval(fxy, x0 + (i-1)*h, y0 + j*h)) / (2*h);
    end
end
for j = 1:N
    Appr_DfX(1, j) = Appr_DfX(2, j);
    Appr_DfX(M, j) = Appr_DfX(M-1, j);
end

Error = Exact_DfX - Appr_DfX;
imagesc(Error);