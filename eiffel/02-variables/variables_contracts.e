class
    VARIABLES_CONTRACTS

create
    make

feature -- Initialization

    make
            -- Demonstrate variables with contracts.
        do
            print ("=== Variables with Contracts ===%N")

            set_temperature (72.0)
            print ("Temperature: " + temperature.out + " F%N")

            set_percentage (85)
            print ("Percentage: " + percentage.out + "%%%N")

            set_name ("Eiffel")
            print ("Name: " + name + "%N")

            print ("%N=== Expanded vs Reference Types ===%N")
            print ("INTEGER is expanded (value type): " + percentage.out + "%N")
            print ("STRING is reference type: " + name + "%N")

            print ("%N=== Default Values ===%N")
            print ("Default INTEGER: " + default_int.out + "%N")
            print ("Default REAL_64: " + default_real.out + "%N")
            print ("Default BOOLEAN: " + default_bool.out + "%N")
            print ("Default CHARACTER: [" + default_char.out + "]%N")
        end

feature -- Access

    temperature: REAL_64
            -- Current temperature in Fahrenheit.

    percentage: INTEGER
            -- A percentage value between 0 and 100.

    name: STRING
            -- A non-empty name.
        attribute
            Result := "Unknown"
        end

feature -- Default value demonstrations

    default_int: INTEGER
            -- Shows default INTEGER value (0).

    default_real: REAL_64
            -- Shows default REAL_64 value (0.0).

    default_bool: BOOLEAN
            -- Shows default BOOLEAN value (False).

    default_char: CHARACTER
            -- Shows default CHARACTER value (null character).

feature -- Element change

    set_temperature (a_temp: REAL_64)
            -- Set temperature with contract.
        require
            reasonable_temp: a_temp >= -459.67 and a_temp <= 1000.0
        do
            temperature := a_temp
        ensure
            temperature_set: temperature = a_temp
        end

    set_percentage (a_value: INTEGER)
            -- Set percentage with bounds checking.
        require
            valid_percentage: a_value >= 0 and a_value <= 100
        do
            percentage := a_value
        ensure
            percentage_set: percentage = a_value
        end

    set_name (a_name: STRING)
            -- Set name with non-empty constraint.
        require
            name_not_empty: not a_name.is_empty
        do
            name := a_name.twin
        ensure
            name_set: name.is_equal (a_name)
        end

invariant
    valid_percentage: percentage >= 0 and percentage <= 100
    valid_name: not name.is_empty

end
