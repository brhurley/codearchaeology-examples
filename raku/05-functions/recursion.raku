# Recursion, scope, and multiple dispatch in Raku

# Classic recursive factorial
sub factorial(Int $n --> Int) {
    $n <= 1 ?? 1 !! $n * factorial($n - 1)
}
say factorial(5);            # 120

# Fibonacci using multiple dispatch on literal values
multi fib(0) { 0 }
multi fib(1) { 1 }
multi fib(Int $n) { fib($n - 1) + fib($n - 2) }
say fib(10);                 # 55

# Lexical scope: file-level 'my' is visible to subs below it
my $outer = "global";
sub show-scope {
    my $inner = "local";     # visible only inside this sub
    "$outer / $inner"
}
say show-scope();            # global / local
