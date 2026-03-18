Module: hello

// Integer / float conversions
let n :: <integer> = 42;
let f :: <float> = 3.7;

format-out("=== Number Conversions ===\n");
format-out("42 as float: %=\n", as(<float>, n));
format-out("3.7 truncated: %d\n", truncate(f));
format-out("3.7 floored: %d\n", floor(f));
format-out("3.7 ceiling: %d\n", ceiling(f));
format-out("3.7 rounded: %d\n", round(f));

// String / number conversions
format-out("\n=== String Conversions ===\n");
let num-str = "42";
let parsed = string-to-integer(num-str);
format-out("\"%s\" as integer: %d\n", num-str, parsed);
format-out("42 as string: \"%s\"\n", integer-to-string(42));
format-out("255 in hex: \"%s\"\n", integer-to-string(255, base: 16));
format-out("8 in binary: \"%s\"\n", integer-to-string(8, base: 2));

// Character conversions
format-out("\n=== Character Conversions ===\n");
let ch :: <character> = 'A';
format-out("'A' as integer: %d\n", as(<integer>, ch));
format-out("65 as character: %c\n", as(<character>, 65));

// Uppercase / lowercase
let lower = 'a';
format-out("'a' uppercased: %c\n", as-uppercase(lower));
format-out("'A' lowercased: %c\n", as-lowercase(ch));

// String case conversion
let text = "Hello Dylan";
format-out("\n=== String Case ===\n");
format-out("uppercase: %s\n", as-uppercase(text));
format-out("lowercase: %s\n", as-lowercase(text));
