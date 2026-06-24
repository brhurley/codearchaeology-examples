# Defining and calling subroutines in Raku

# Positional parameters with types and an explicit return type
sub area(Numeric $width, Numeric $height --> Numeric) {
    $width * $height
}
say area(4, 5);                 # 20

# Default parameter values
sub greet($name, $greeting = "Hello") {
    "$greeting, $name!"
}
say greet("Raku");              # uses the default greeting
say greet("Raku", "Hi");        # overrides the default

# Named parameters use a colon prefix in the signature
sub power(:$base, :$exp = 2) {
    $base ** $exp
}
say power(base => 3);           # exp defaults to 2
say power(:base(2), :exp(10));  # both supplied

# Optional parameters end with a trailing ?
sub label($text, $suffix?) {
    $suffix.defined ?? "$text ($suffix)" !! $text
}
say label("Item");              # no suffix
say label("Item", "new");       # with suffix
