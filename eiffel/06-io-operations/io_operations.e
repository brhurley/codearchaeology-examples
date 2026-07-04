note
    description: "Demonstrates console and file I/O in Eiffel"

class
    IO_OPERATIONS

create
    make

feature -- Initialization

    make
            -- Run all I/O demonstrations in order.
        do
            show_console_output
            write_to_file
            read_from_file
        end

feature -- Console output

    show_console_output
            -- Demonstrate several forms of console output.
        local
            count: INTEGER
        do
            count := 42

            -- print comes from ANY and accepts any object
            print ("=== Console Output ===%N")

            -- io.put_string writes a string with no trailing newline
            io.put_string ("A plain string%N")

            -- Typed output: write an integer directly
            io.put_string ("Count is: ")
            io.put_integer (count)
            io.put_new_line

            -- Convert a value to a string with .out and concatenate
            io.put_string ("Doubled: " + (count * 2).out + "%N")

            -- %T is a tab; %N is a newline
            io.put_string ("Tab%Tseparated%Tvalues%N")
        end

feature -- File output

    write_to_file
            -- Create notes.txt and write several lines to it.
        local
            output_file: PLAIN_TEXT_FILE
        do
            create output_file.make_open_write ("notes.txt")
            output_file.put_string ("First line%N")
            output_file.put_string ("Second line%N")
            output_file.put_string ("Number: ")
            output_file.put_integer (100)
            output_file.put_new_line
            output_file.close
            print ("%N=== Wrote notes.txt ===%N")
        end

feature -- File input

    read_from_file
            -- Read notes.txt back and echo each line to the console.
        local
            input_file: PLAIN_TEXT_FILE
        do
            print ("=== Reading notes.txt ===%N")
            create input_file.make_open_read ("notes.txt")
            from
                input_file.read_line
            until
                input_file.exhausted
            loop
                print (input_file.last_string + "%N")
                input_file.read_line
            end
            input_file.close
        end

end
