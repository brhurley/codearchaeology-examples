/* Variables and Types in REXX */

/* Section 1: Basic assignment -- no declarations required */
say "=== Basic Variables ==="
message = "Hello, REXX!"
count   = 42
pi      = 3.14159
flag    = 1                 /* REXX uses 1/0 for true/false */

say "message:" message
say "count:" count
say "pi:" pi
say "flag:" flag
say ""

/* Section 2: Every value is a string until used as a number */
say "=== Typeless Data ==="
x = 100                     /* stored as the 3-char string "100" */
y = "100"                   /* stored as the 3-char string "100" -- identical */
say "x + 5 =" x + 5         /* arithmetic context: treats as number */
say "y + 5 =" y + 5         /* same result */
say "x || 'abc' =" x || "abc"   /* string context: concatenates */
say ""

/* Section 3: DATATYPE() inspects how a value would be interpreted */
say "=== DATATYPE Checks ==="
a = 42
b = "hello"
c = 3.14
d = "2.5e3"                 /* scientific notation is valid numeric */
say "datatype(" || a || "):" datatype(a)
say "datatype(" || b || "):" datatype(b)
say "datatype(" || c || "):" datatype(c)
say "datatype(" || d || "):" datatype(d)
say "datatype(" || a || ",'W'):" datatype(a, 'W')   /* W = whole number? */
say "datatype(" || c || ",'W'):" datatype(c, 'W')
say ""

/* Section 4: Arbitrary-precision decimal arithmetic */
say "=== Decimal Arithmetic ==="
numeric digits 9
say "1/3 (9 digits):" 1/3
numeric digits 30
say "1/3 (30 digits):" 1/3
numeric digits 50
say "2**100 (50 digits):" 2**100
say ""

/* Section 5: Non-strict (=) vs strict (==) comparison */
say "=== Comparison Types ==="
say "(5 = '5.0'):" (5 = "5.0")
say "(5 == '5.0'):" (5 == "5.0")
say "('abc' = 'abc '):" ("abc" = "abc ")
say "('abc' == 'abc '):" ("abc" == "abc ")
