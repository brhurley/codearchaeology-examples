# --- Optional type annotations ---
my Int  $count    = 42;
my Str  $greeting = "Hello";
my Rat  $fraction = 1/4;
my Bool $ready    = True;

say "count ({$count.WHAT.^name}): $count";
say "greeting ({$greeting.WHAT.^name}): $greeting";
say "fraction ({$fraction.WHAT.^name}): $fraction";
say "ready ({$ready.WHAT.^name}): $ready";

# --- Type coercion via methods ---
my $text    = "123";
my $as_int  = $text.Int;
my $as_num  = "2.5".Num;
my $as_str  = 42.Str;
my $as_bool = 0.so;

say "\"$text\".Int = $as_int (now {$as_int.WHAT.^name})";
say "\"2.5\".Num = $as_num";
say "42.Str = \"$as_str\" (now {$as_str.WHAT.^name})";
say "0.so = $as_bool";
say "1.so = {1.so}";

# --- Constants: immutable, no sigil required ---
constant PI       = 3.14159;
constant GREETING = "Hello, World!";

say "PI = $PI";
say "GREETING = $GREETING";

# --- Subsets: constrained types with a where-clause ---
subset PositiveInt of Int where * > 0;
subset ShortStr    of Str where .chars <= 5;

my PositiveInt $age  = 30;
my ShortStr    $code = "RAKU";

say "age = $age (constrained to positive integers)";
say "code = $code (constrained to max 5 chars)";

# --- Undefined values: type objects stand in for "no value yet" ---
my $maybe;
say "maybe defined? {$maybe.defined}";
say "maybe type: {$maybe.WHAT.^name}";

my Int $typed_maybe;
say "typed_maybe defined? {$typed_maybe.defined}";
say "typed_maybe type: {$typed_maybe.WHAT.^name}";
