Module: hello

// Plain text; \n is an escaped newline inside the string literal.
format-out("=== Formatted Output in Dylan ===\n");

// %s inserts a value using its "message" representation — ideal for strings.
let language = "Dylan";
format-out("Language: %s\n", language);

// %d formats an integer in decimal. Extra arguments are consumed left to right.
let year = 1992;
format-out("%s first appeared in %d\n", language, year);

// The same integer can be shown in other radixes:
// %b binary, %o octal, %x hexadecimal.
let value = 255;
format-out("%d in binary is %b, octal %o, hex %x\n", value, value, value, value);

// %c prints a single character object (character literals use single quotes).
format-out("First letter: %c\n", 'D');

// %= prints the full inspect-style representation of ANY object,
// which is the easiest way to display collections like lists.
let primes = #(2, 3, 5, 7, 11);
format-out("Primes: %=\n", primes);

// %% emits a literal percent sign.
format-out("Test coverage: 100%%\n");
