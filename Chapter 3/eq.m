A = [3 2; 1 -1];
b = [-1; 1];
x = inv(A) * b;
/*  -> Only used in simple cases. 
    For much complex equation, where inv() is ran multiple times; det(A) -> 0 => Accumulated errors */
x = A\B;