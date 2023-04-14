m = input('Enter the month: ');
switch m
  case 2
    fprintf('28\n');
  case {1, 3, 5, 7, 8, 10, 12}
    fprintf('31\n');
  case {4, 6, 9, 11}
    fprintf('30\n');
  otherwise
    fprintf('Invalid month\n');
end