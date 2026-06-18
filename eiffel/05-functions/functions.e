note
    description: "Demonstrates functions (queries) and procedures (commands) in Eiffel"

class
    FUNCTIONS

create
    make

feature -- Initialization

    make
            -- Run all demonstrations.
        do
                -- Functions (queries) that return values
            print ("square (5) = " + square (5).out + "%N")
            print ("add (3, 4) = " + add (3, 4).out + "%N")
            print ("factorial (5) = " + factorial (5).out + "%N")
            print ("sum_to (10) = " + sum_to (10).out + "%N")

                -- Procedures (commands) that change state
            print ("counter starts at " + counter.out + "%N")
            increment
            increment
            print ("counter after two increments = " + counter.out + "%N")

                -- A procedure with a parameter
            greet ("Eiffel")
        end

feature -- Queries (functions return a value, no side effects)

    square (n: INTEGER): INTEGER
            -- Square of `n'.
        do
            Result := n * n
        end

    add (a, b: INTEGER): INTEGER
            -- Sum of `a' and `b'.
        do
            Result := a + b
        end

    factorial (n: INTEGER): INTEGER
            -- Factorial of `n', computed recursively.
        require
            non_negative: n >= 0
        do
            if n <= 1 then
                Result := 1
            else
                Result := n * factorial (n - 1)
            end
        ensure
            at_least_one: Result >= 1
        end

    sum_to (n: INTEGER): INTEGER
            -- Sum of all integers from 1 to `n'.
        local
            i: INTEGER
        do
            from
                i := 1
            until
                i > n
            loop
                Result := Result + i
                i := i + 1
            end
        end

feature -- State

    counter: INTEGER
            -- Value maintained by `increment' (a query attribute).

feature -- Commands (procedures change state, return nothing)

    increment
            -- Increase `counter' by one.
        do
            counter := counter + 1
        ensure
            incremented: counter = old counter + 1
        end

    greet (name: STRING)
            -- Print a greeting addressed to `name'.
        require
            name_not_empty: not name.is_empty
        do
            print ("Hello, " + name + "!%N")
        end

end
