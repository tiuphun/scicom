x = [1:12];
f = [54.4; 54.6; 67.1; 78.3; 85.3; 88.7; 96.9; 97.6; 84.1; 80.1; 68.8; 61.1];

function [] = Spline (x, y)
    spline_coeff = spline(x, y);

    x_vals = 1:0.1:12;
    p_vals = ppval(spline_coeff, x_vals);

    plot(x_vals, p_vals, 'b-', x, y, 'ro');
    legend('Interpolated', 'Data points');
    xlabel('x');
    ylabel('y');

    % % Generate the cubic spline interpolants
    % for i = 1:11
    %     xx = i:i+1; % x-coordinates for current polynomial
    %     yy = y(i:i+1); % y-coordinates for current polynomial
    %     p = spline(xx, yy); % Generate cubic spline
    %     fprintf('Polynomial %d: %.4f + %.4f*(x-%d) + %.4f*(x-%d)^2 + %.4f*(x-%d)^3\n', i, p.coefs(1,end), p.coefs(2,end-1), xx(1), p.coefs(3,end-2), xx(1), p.coefs(4,end-3), xx(1)); % Print the polynomial in a readable format
    % end
