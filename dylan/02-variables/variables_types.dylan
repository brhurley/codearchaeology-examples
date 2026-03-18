Module: hello

// Integers: arbitrary precision
let small :: <integer> = 42;
let negative :: <integer> = -17;
let big = 1000000 * 1000000;

format-out("=== Integers ===\n");
format-out("small = %d\n", small);
format-out("negative = %d\n", negative);
format-out("big = %d\n", big);

// Floating point numbers
let pi :: <float> = 3.14159;
let tiny :: <float> = 0.001;
let sci = 6.022e23;

format-out("\n=== Floats ===\n");
format-out("pi = %=\n", pi);
format-out("tiny = %=\n", tiny);
format-out("scientific = %=\n", sci);

// Strings
let name :: <string> = "Dylan";
let empty :: <string> = "";
let message = concatenate("Hello, ", name, "!");

format-out("\n=== Strings ===\n");
format-out("name = %s\n", name);
format-out("empty = \"%s\"\n", empty);
format-out("message = %s\n", message);
format-out("length of name = %d\n", name.size);

// Characters
let ch :: <character> = 'A';
let space :: <character> = ' ';

format-out("\n=== Characters ===\n");
format-out("ch = %c\n", ch);
format-out("char code of 'A' = %d\n", as(<integer>, ch));

// Booleans: #t and #f
let yes :: <boolean> = #t;
let no :: <boolean> = #f;

format-out("\n=== Booleans ===\n");
format-out("yes = %=\n", yes);
format-out("no = %=\n", no);

// Symbols: interned names, written with #"name" syntax
let status = #"active";
let color = #"red";

format-out("\n=== Symbols ===\n");
format-out("status = %=\n", status);
format-out("color = %=\n", color);
format-out("same symbol? %=\n", status == #"active");

// Type checking with instance?
format-out("\n=== Type Checking ===\n");
format-out("42 is <integer>? %=\n", instance?(42, <integer>));
format-out("3.14 is <float>? %=\n", instance?(3.14, <float>));
format-out("\"hi\" is <string>? %=\n", instance?("hi", <string>));
format-out("'A' is <character>? %=\n", instance?('A', <character>));
format-out("#t is <boolean>? %=\n", instance?(#t, <boolean>));
format-out("42 is <number>? %=\n", instance?(42, <number>));
format-out("42 is <object>? %=\n", instance?(42, <object>));
