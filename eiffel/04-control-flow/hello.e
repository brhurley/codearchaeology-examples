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
            -- Eiffel has no ternary; assign in each branch instead
        if temperature >= 15 then
            label := "comfortable"
        else
            label := "chilly"
        end
        print ("Today is " + label + "%N")
    end
