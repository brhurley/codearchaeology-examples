Module: hello

let a = 17;
let b = 5;

format-out("a + b = %d\n", a + b);
format-out("a - b = %d\n", a - b);
format-out("a * b = %d\n", a * b);
format-out("a / b = %d\n", a / b);
format-out("modulo(a, b) = %d\n", modulo(a, b));
format-out("truncate/(a, b) = %d\n", truncate/(a, b));

let mixed = a + 0.5;
format-out("a + 0.5 = %=\n", mixed);

let negated = -a;
format-out("-a = %d\n", negated);
