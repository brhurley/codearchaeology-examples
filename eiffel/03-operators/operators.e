note
    description: "Demonstration of Eiffel operators"

class
    OPERATORS

create
    make

feature -- Initialization

    make
            -- Run the operator demonstrations.
        local
            a, b: INTEGER
            x, y: REAL_64
            s1, s2: STRING
            flag_a, flag_b: BOOLEAN
        do
            -- Arithmetic operators on INTEGER
            a := 17
            b := 5
            print ("Arithmetic with a=17, b=5%N")
            print ("  a + b  = " + (a + b).out + "%N")
            print ("  a - b  = " + (a - b).out + "%N")
            print ("  a * b  = " + (a * b).out + "%N")
            print ("  a // b = " + (a // b).out + "%N")
            print ("  a \\ b = " + (a \\ b).out + "%N")
            print ("  a ^ 2  = " + (a ^ 2).out + "%N")

            -- Real division (use REAL_64 for fractional results)
            x := 10.0
            y := 4.0
            print ("%NReal division: 10.0 / 4.0 = " + (x / y).out + "%N")

            -- Relational operators return BOOLEAN
            print ("%NComparisons with a=17, b=5%N")
            print ("  a = b  : " + (a = b).out + "%N")
            print ("  a /= b : " + (a /= b).out + "%N")
            print ("  a > b  : " + (a > b).out + "%N")
            print ("  a <= b : " + (a <= b).out + "%N")

            -- Boolean operators
            flag_a := True
            flag_b := False
            print ("%NBooleans with flag_a=True, flag_b=False%N")
            print ("  not flag_a            : " + (not flag_a).out + "%N")
            print ("  flag_a and flag_b     : " + (flag_a and flag_b).out + "%N")
            print ("  flag_a or flag_b      : " + (flag_a or flag_b).out + "%N")
            print ("  flag_a xor flag_b     : " + (flag_a xor flag_b).out + "%N")
            print ("  flag_a implies flag_b : " + (flag_a implies flag_b).out + "%N")

            -- Short-circuit boolean operators
            print ("%NShort-circuit: True or else (1 // 0 = 0) = ")
            print ((True or else (1 // 1 = 0)).out + "%N")

            -- String concatenation
            s1 := "Design"
            s2 := "Contract"
            print ("%NString concat: " + s1 + " by " + s2 + "%N")

            -- Operator precedence: * binds tighter than +
            print ("%N2 + 3 * 4   = " + (2 + 3 * 4).out + "%N")
            print ("(2 + 3) * 4 = " + ((2 + 3) * 4).out + "%N")
        end

end
