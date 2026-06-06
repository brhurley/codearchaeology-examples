# continue skips, break stops
for i in 1..10:
  if i mod 2 == 0:
    continue        # skip even numbers
  if i > 7:
    break           # stop once we pass 7
  echo "Odd: ", i

# labeled break escapes nested loops in one jump
block outer:
  for i in 1..3:
    for j in 1..3:
      if i * j > 4:
        echo "Breaking at ", i, "x", j
        break outer
      echo i, " * ", j, " = ", i * j
