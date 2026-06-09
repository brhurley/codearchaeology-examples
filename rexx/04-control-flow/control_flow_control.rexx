/* Loop control in REXX */

/* LEAVE exits a loop early */
say "Searching for 7:"
do i = 1 to 100
    if i = 7 then do
        say "  Found 7 at iteration" i
        leave
    end
end

/* ITERATE skips the rest of the current iteration */
say "Odd numbers from 1 to 10:"
do j = 1 to 10
    if j // 2 = 0 then iterate
    say "  Odd:" j
end

/* DO FOREVER loops until a LEAVE is reached */
say "Accumulating until the sum exceeds 20:"
total = 0
k = 1
do forever
    total = total + k
    if total > 20 then leave
    k = k + 1
end
say "  Final total:" total "after adding 1 to" k
