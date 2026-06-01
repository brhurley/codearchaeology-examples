note
    description: "A loop carrying a correctness contract"

class
    LOOP_VARIANT

create
    make

feature

    make
            -- Sum the integers 1..n, with the loop proving its own correctness.
        local
            i, sum, n: INTEGER
        do
            n := 5
            from
                i := 1
                sum := 0
            invariant
                i_in_range: i >= 1 and i <= n + 1
                sum_correct: sum = (i - 1) * i // 2
            until
                i > n
            loop
                sum := sum + i
                i := i + 1
            variant
                n - i + 1
            end
            print ("Sum 1.." + n.out + " = " + sum.out + "%N")
        end

end
