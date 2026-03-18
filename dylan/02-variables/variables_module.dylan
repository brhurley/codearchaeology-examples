Module: hello

// Module-level mutable variables
define variable *counter* :: <integer> = 0;
define variable *app-name* :: <string> = "CodeArchaeology";

// Module-level constants (cannot be reassigned)
define constant $pi :: <float> = 3.14159265;
define constant $max-retries :: <integer> = 5;
define constant $app-version = "1.0.0";

format-out("App: %s v%s\n", *app-name*, $app-version);
format-out("Pi = %=\n", $pi);
format-out("Max retries = %d\n", $max-retries);

// Mutable variables can be reassigned with :=
format-out("\nCounter starts at: %d\n", *counter*);
*counter* := *counter* + 1;
format-out("After increment: %d\n", *counter*);
*counter* := *counter* + 1;
format-out("After another increment: %d\n", *counter*);

// Naming conventions:
// *earmuffs* for mutable module variables (borrowed from Lisp)
// $dollar-prefix for constants
// kebab-case for everything (Dylan convention)

define variable *greeting* :: <string> = "Hello";
define constant $separator = ", ";

format-out("\n%s%s%s!\n", *greeting*, $separator, "World");
*greeting* := "Greetings";
format-out("%s%s%s!\n", *greeting*, $separator, "Dylanista");
