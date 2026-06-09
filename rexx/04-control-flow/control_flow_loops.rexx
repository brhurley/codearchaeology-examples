/* Loops in REXX */

/* Counted loop: index from 1 to 5 */
say "Counting up:"
do i = 1 to 5
    say "  i =" i
end

/* Counted loop with a step using BY */
say "Counting by twos:"
do n = 0 to 10 by 2
    say "  n =" n
end

/* Repeat a fixed number of times (no index) */
say "Three cheers:"
do 3
    say "  Hooray!"
end

/* DO WHILE: test the condition before each iteration */
say "Countdown:"
count = 3
do while count > 0
    say "  count =" count
    count = count - 1
end

/* DO UNTIL: test the condition after each iteration */
say "Runs at least once:"
x = 10
do until x >= 10
    say "  x =" x
    x = x + 1
end
