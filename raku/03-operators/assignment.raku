my $n = 10;
$n += 5;    say $n;   # add and assign
$n -= 3;    say $n;   # subtract and assign
$n *= 2;    say $n;   # multiply and assign
$n /= 4;    say $n;   # divide and assign
$n **= 2;   say $n;   # exponentiate and assign

# String concatenation assignment
my $greeting = "Hello";
$greeting ~= ", World!";
say $greeting;

# Defined-or assignment: only sets when undefined
my $value;
$value //= "default";
say $value;
