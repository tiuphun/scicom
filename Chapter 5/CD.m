h = 0.001; 
approximate = (sin(pi/3+h) - sin(pi/3-h)) / (2*h);
error = 100 * (exact - approximate)/exact;

% Better (smaller) error. Hard to obtain all neighbor points IRL