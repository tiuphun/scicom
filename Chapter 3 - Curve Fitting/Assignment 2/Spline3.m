x = [1:12];
f = [54.4; 54.6; 67.1; 78.3; 85.3; 88.7; 96.9; 97.6; 84.1; 80.1; 68.8; 61.1];

function [] = Spline3 (x, y)
    n = length(x);
    cubic_spline = spline(x, y);

    x_vals = 1:0.1:12;
    p_vals = ppval(cubic_spline, x_vals);

    % Plot the dataset & curve
    plot(x_vals, p_vals, 'b-', x, y, 'ro');
    legend('Interpolated', 'Data points');
    xlabel('x');
    ylabel('y');

    % Coeffs matrix
    coeffs = zeros(11, 4);
    for i = 1 : (n-1)
        coeffs(i, :) = cubic_spline.coefs(i, :); 
    end
    disp(coeffs);
