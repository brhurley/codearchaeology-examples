/* Stem variables: REXX's compound variables */

/* Section 1: Integer tails simulate a traditional array */
say "=== Integer-tail Stem ==="
fruit.1 = "apple"
fruit.2 = "banana"
fruit.3 = "cherry"
fruit.0 = 3                 /* convention: store the count in .0 */

do i = 1 to fruit.0
    say "fruit." || i || ":" fruit.i
end
say ""

/* Section 2: Bare-stem assignment provides a default for every tail */
say "=== Default Tail Value ==="
score. = 0                  /* every tail now reads as 0 unless overridden */
score.1 = 95
score.2 = 87
say "score.1:" score.1
say "score.2:" score.2
say "score.99 (never assigned):" score.99
say ""

/* Section 3: Symbol tails behave like associative-array keys */
say "=== Symbol Tails ==="
capital.usa    = "Washington"
capital.france = "Paris"
capital.japan  = "Tokyo"
say "capital.usa:" capital.usa
say "capital.france:" capital.france
say "capital.japan:" capital.japan
