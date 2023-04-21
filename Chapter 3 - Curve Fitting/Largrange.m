function [] = Largrange (x, f)
    plot(x, f, 'o');
    hold on;
    N = length(x) - 1;
    
    % Lagrange method
    xx = linspace(min(x),max(x),100);
    yy = zeros(size(xx));
    for i = 1:N+1
        L = ones(size(xx));
        for j = 1:N+1
            if j ~= i
                L = L.*(xx-x(j))/(x(i)-x(j));
            end
        end
        yy = yy + f(i)*L;
    end
    
    plot(xx, yy);
    legend('data points','polynomial');
    hold off;
end