Module: hello

// Local variables with let (immutable within their scope)
let greeting = "Hello from Dylan";
let year = 1992;
let pi-approx = 3.14159;

format-out("greeting = %s\n", greeting);
format-out("year = %d\n", year);
format-out("pi ≈ %=\n", pi-approx);

// Type-annotated variables using :: syntax
let language :: <string> = "Dylan";
let version :: <integer> = 2025;
let ratio :: <float> = 1.618;

format-out("\nlanguage = %s\n", language);
format-out("version = %d\n", version);
format-out("ratio = %=\n", ratio);

// Multiple value binding with let
let (quotient, remainder) = truncate/(17, 5);
format-out("\n17 / 5 = %d remainder %d\n", quotient, remainder);

// Nested scope
let outer = "outer value";
begin
  let inner = "inner value";
  format-out("\n%s and %s\n", outer, inner);
end;
format-out("outer is still: %s\n", outer);
