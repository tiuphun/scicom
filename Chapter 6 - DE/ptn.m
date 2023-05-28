L = 1;          % Length of metal strip
dx = 0.1;       % Spatial step
dt = 0.001;     % Time step
D = 0.1;        % Temperature coefficient
X = 0:dx:L;     % Position vector
N = length(X);  % Number of spatial steps
NTime = 100;    % Number of time steps

% Initial condition
T = ones(1,N)*25;

% Plot initial temperature profile
plot(X, T, 'r--');
hold on;

% Iterate over time steps
for t = 1:N
    % Calculate second derivative of T with respect to x
    DHB2 = zeros(1,N);
    for i = 2:N-1
        DHB2(i) = (T(i-1) - 2*T(i) + T(i+1)) / (dx^2);
    end
    DHB2(1) = (100 - 2*T(1) + T(2)) / (dx^2); % left boundary condition
    DHB2(N) = (T(N-1) - 2*T(N) + 25) / (dx^2); % right boundary condition
    
    % Calculate value of T at time t+1 using forward Euler formula
    T = T + D * DHB2 * dt;
end

% Plot final temperature profile
plot(X, T, 'b-');
xlabel('Position (m)');
ylabel('Temperature (C)');
title('Temperature Profile of Metal Strip');
