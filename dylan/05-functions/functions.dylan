Module: functions

// `define function` makes a plain named function.
// `=> (result :: <integer>)` declares the type of the returned value.
define function square (n :: <integer>) => (result :: <integer>)
  n * n
end function;

// Two methods on one generic function `describe-number`. Dylan picks the
// method by the runtime type of the argument — this is multiple dispatch.
define method describe-number (n :: <integer>) => ()
  format-out("%d is an integer\n", n);
end method;

define method describe-number (n :: <float>) => ()
  format-out("%= is a float\n", n);
end method;

// Recursion: a function calls itself until it hits the base case.
define function factorial (n :: <integer>) => (result :: <integer>)
  if (n <= 1)
    1
  else
    n * factorial(n - 1)
  end if
end function;

// `values` returns more than one result at once.
define function min-max (a :: <integer>, b :: <integer>)
    => (smaller :: <integer>, larger :: <integer>)
  if (a < b)
    values(a, b)
  else
    values(b, a)
  end if
end function;

// `#key` declares optional keyword parameters with default values.
define function greet (name :: <string>, #key greeting = "Hello") => ()
  format-out("%s, %s!\n", greeting, name);
end function;

// --- Top-level expressions run when the program starts ---

format-out("square(7) = %d\n", square(7));

describe-number(42);
describe-number(3.5);

format-out("factorial(5) = %d\n", factorial(5));

// Receive multiple return values with `let (a, b) = ...`
let (lo, hi) = min-max(9, 4);
format-out("min = %d, max = %d\n", lo, hi);

greet("World");
greet("Dylan", greeting: "Welcome");
