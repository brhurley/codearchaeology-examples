Module: io-demo

// Print a prompt, then flush so it shows before we block on input.
format-out("What is your name? ");
force-output(*standard-output*);

// read-line returns the typed line as a string (newline stripped).
let name = read-line(*standard-input*);
format-out("Hello, %s! Nice to meet you.\n", name);

format-out("How old are you? ");
force-output(*standard-output*);

// Input is text, so convert it before doing arithmetic.
let age-text = read-line(*standard-input*);
let age = string-to-integer(age-text);
format-out("Next year you will be %d.\n", age + 1);
