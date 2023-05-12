exact = cos(pi/3);
h = 0.1;
approximate = (sin(pi)/3+h) - sin(pi/3))/h;
error = (exact - approximate)/exact;

% Simple method, big error (~ h)