sum = 0
# standard for() loop
for i = 0:100
  if (mod(i, 3) == 0)
    sum = sum + i;
  end
# for() with positive steps
for i = 0:3:100
  sum = sum + i;
end
# for() with negative steps
for i = 99:-3:0
  sum = sum + i;
end
end