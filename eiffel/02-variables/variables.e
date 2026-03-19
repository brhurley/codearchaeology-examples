class
    VARIABLES

create
    make

feature -- Initialization

    make
            -- Demonstrate basic variable types and declarations.
        local
            an_integer: INTEGER
            a_real: REAL_64
            a_character: CHARACTER
            a_boolean: BOOLEAN
            a_natural: NATURAL_32
            an_integer_8: INTEGER_8
            an_integer_64: INTEGER_64
        do
            -- Integer types
            an_integer := 42
            an_integer_8 := 127
            an_integer_64 := 9_000_000_000
            a_natural := 255

            print ("=== Integer Types ===%N")
            print ("INTEGER: " + an_integer.out + "%N")
            print ("INTEGER_8: " + an_integer_8.out + "%N")
            print ("INTEGER_64: " + an_integer_64.out + "%N")
            print ("NATURAL_32: " + a_natural.out + "%N")

            -- Floating-point types
            a_real := 3.14159

            print ("%N=== Floating-Point Types ===%N")
            print ("REAL_64: " + a_real.out + "%N")

            -- Character type
            a_character := 'A'

            print ("%N=== Character Type ===%N")
            print ("CHARACTER: " + a_character.out + "%N")

            -- Boolean type
            a_boolean := True

            print ("%N=== Boolean Type ===%N")
            print ("BOOLEAN: " + a_boolean.out + "%N")

            -- String type (reference type)
            demonstrate_strings
            demonstrate_type_conversions
            demonstrate_constants
        end

feature -- String demonstrations

    demonstrate_strings
            -- Show string variables and operations.
        local
            greeting: STRING
            name: STRING
            combined: STRING
        do
            greeting := "Hello"
            name := "Eiffel"
            combined := greeting + ", " + name + "!"

            print ("%N=== String Type ===%N")
            print ("greeting: " + greeting + "%N")
            print ("name: " + name + "%N")
            print ("combined: " + combined + "%N")
            print ("Length of combined: " + combined.count.out + "%N")
        end

feature -- Type conversions

    demonstrate_type_conversions
            -- Show how to convert between types.
        local
            i: INTEGER
            r: REAL_64
            s: STRING
            b: BOOLEAN
        do
            print ("%N=== Type Conversions ===%N")

            -- Integer to Real
            i := 7
            r := i.to_double
            print ("Integer " + i.out + " to Real: " + r.out + "%N")

            -- Real to Integer (truncates)
            r := 9.81
            i := r.truncated_to_integer
            print ("Real " + r.out + " truncated to Integer: " + i.out + "%N")

            -- Integer to String
            i := 42
            s := i.out
            print ("Integer " + i.out + " to String: %"" + s + "%"%N")

            -- Boolean to String
            b := True
            print ("Boolean to String: " + b.out + "%N")
        end

feature -- Constants

    Pi: REAL_64 = 3.14159265358979
            -- The mathematical constant pi.

    Max_attempts: INTEGER = 10
            -- Maximum number of retry attempts.

    App_name: STRING = "Eiffel Variables Demo"
            -- Application name.

    demonstrate_constants
            -- Show constant usage.
        do
            print ("%N=== Constants ===%N")
            print ("Pi: " + Pi.out + "%N")
            print ("Max attempts: " + Max_attempts.out + "%N")
            print ("App name: " + App_name + "%N")
        end

end
