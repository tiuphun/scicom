function [] = GiaiPT (a, b, c)
  delta = b*b + 4*a*c;
  if (delta < 0)
    fprintf('No solution');
    display
  elseif (delta == 0)
    fprintf('One solution: %f', -b/(2*a));
  else
    x1 = (-b + sqrt(b*b - 4*a*c)) / (2*a);
    x2 = (b + sqrt(b*b - 4*a*c)) / (2*a);
    fprintf('Two solutions: x1 = %f, x2 = %f', x1, x2);
  end
endfunction
