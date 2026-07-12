# Reading input from the user in Raku

# prompt displays a message and reads one line (newline stripped)
my $name = prompt "Enter your name: ";
say "Hello, $name!";

# Strings numify automatically in numeric context
my $age = prompt "Enter your age: ";
say "Next year you will be { $age + 1 }.";

# get reads a single line from standard input
say "Type a word:";
my $word = get;
say "You typed: $word ({ $word.chars } characters)";

# To read every line from STDIN until EOF, iterate lines():
#   for lines() -> $line { say "Got: $line" }
