function [] = Interpolation (x, f)
    N = length(x);
    for i = 1:N 
        for j = 1:N 
            A(i, j) = x(i) ^ (N-j);
        end
    end
    p = inv(A) * f

    % Plot the dataset
    plot(x, f, 'bo'); 
    hold on;
    
    X = 1 : 0.1 : 12;
    Y = polyval(p, X);
    plot(X, Y, 'r-');
    
    
    % % Define the values at which to interpolate
    % xi = linspace(min(x), max(x), 100);

    % % Interpolate the data using the 'linear' method
    % yi = interp1(x, y, xi, 'linear');

    % % Plot the interpolated data
    % plot(x, y, 'o', xi, yi)
    % xlabel('x')
    % ylabel('y')
    % title('Interpolated data using linear method')
    % legend('Original data', 'Interpolated data')