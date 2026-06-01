Module: hello

// Counting for loop over a numeric range (inclusive)
for (i from 1 to 3)
  format-out("Count: %d\n", i);
end for;

// Stepping by 2
for (i from 0 to 6 by 2)
  format-out("Even: %d\n", i);
end for;

// Iterating over a literal list
for (fruit in #("apple", "banana", "cherry"))
  format-out("Fruit: %s\n", fruit);
end for;

// while: repeat as long as the test is true
let countdown = 3;
while (countdown > 0)
  format-out("T-minus %d\n", countdown);
  countdown := countdown - 1;
end while;

// until: repeat until the test becomes true
let n = 1;
until (n > 3)
  format-out("Step %d\n", n);
  n := n + 1;
end until;
