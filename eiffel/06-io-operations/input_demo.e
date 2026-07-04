note
    description: "Reading input from the keyboard"

class
    INPUT_DEMO

create
    make

feature -- Initialization

    make
            -- Prompt for a name and an age, then respond.
        local
            age: INTEGER
        do
            io.put_string ("What is your name? ")
            io.read_line
            io.put_string ("Hello, " + io.last_string + "!%N")

            io.put_string ("How old are you? ")
            io.read_integer
            age := io.last_integer
            io.put_string ("Next year you will be ")
            io.put_integer (age + 1)
            io.put_new_line
        end

end
