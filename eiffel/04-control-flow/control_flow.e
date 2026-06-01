note
    description: "Demonstrates control flow constructs in Eiffel"

class
    CONTROL_FLOW

create
    make

feature -- Initialization

    make
            -- Run every control flow demonstration in turn.
        do
            show_conditionals (18)
            show_inspect (6)
            show_counting_loop
            show_across_loop
            show_search
        end

feature -- Demonstrations

    show_conditionals (temperature: INTEGER)
            -- Classify `temperature` with if/elseif/else.
        local
            label: STRING
        do
            if temperature > 30 then
                print ("It is hot%N")
            elseif temperature >= 15 then
                print ("It is mild%N")
            else
                print ("It is cold%N")
            end
            if temperature >= 15 then
                label := "comfortable"
            else
                label := "chilly"
            end
            print ("Today is " + label + "%N")
        end

    show_inspect (day: INTEGER)
            -- Multi-way branch on an integer with inspect.
        do
            inspect day
            when 1, 2, 3, 4, 5 then
                print ("Weekday%N")
            when 6, 7 then
                print ("Weekend%N")
            else
                print ("Invalid day%N")
            end
        end

    show_counting_loop
            -- Count from 1 to 5 with from/until/loop.
        local
            i: INTEGER
        do
            from
                i := 1
            until
                i > 5
            loop
                print ("Count: " + i.out + "%N")
                i := i + 1
            end
        end

    show_across_loop
            -- Iterate over an integer interval, printing even numbers.
        do
            across 1 |..| 5 as ic loop
                if ic.item \\ 2 = 0 then
                    print ("Even: " + ic.item.out + "%N")
                end
            end
        end

    show_search
            -- Stop scanning as soon as the target is found.
        local
            i: INTEGER
            found: BOOLEAN
        do
            from
                i := 1
            until
                i > 10 or found
            loop
                if i = 4 then
                    print ("Found at " + i.out + "%N")
                    found := True
                end
                i := i + 1
            end
        end

end
