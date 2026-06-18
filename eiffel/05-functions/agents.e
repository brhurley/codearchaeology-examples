note
    description: "Demonstrates agents - Eiffel's first-class routines"

class
    AGENTS

create
    make

feature -- Initialization

    make
            -- Pass routines around as agents.
        do
                -- A procedure passed as an agent
            for_each_1_to (3, agent print_line)

                -- A function passed as an agent
            print ("apply (agent square, 6) = " + apply (agent square, 6).out + "%N")
        end

feature -- Higher-order routines

    for_each_1_to (n: INTEGER; action: PROCEDURE [TUPLE [INTEGER]])
            -- Call `action' once for each integer from 1 to `n'.
        do
            across 1 |..| n as i loop
                action.call ([i.item])
            end
        end

    apply (f: FUNCTION [TUPLE [INTEGER], INTEGER]; x: INTEGER): INTEGER
            -- Result of applying `f' to `x'.
        do
            Result := f.item ([x])
        end

feature -- Routines passed as agents

    print_line (k: INTEGER)
            -- Print `k' on its own line.
        do
            print ("Line " + k.out + "%N")
        end

    square (n: INTEGER): INTEGER
            -- Square of `n'.
        do
            Result := n * n
        end

end
