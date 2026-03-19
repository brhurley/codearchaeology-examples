class
    VARIABLES_VOID_SAFETY

create
    make

feature -- Initialization

    make
            -- Demonstrate void safety and detachable types.
        do
            print ("=== Void Safety ===%N")
            demonstrate_attached
            demonstrate_detachable
        end

feature -- Attached vs Detachable

    name: STRING
            -- An attached attribute (cannot be Void after creation).
        attribute
            Result := "Default"
        end

    nickname: detachable STRING
            -- A detachable attribute (can be Void).

    demonstrate_attached
            -- Show attached (non-void) attribute usage.
        do
            name := "Eiffel Developer"
            print ("Name: " + name + "%N")
            print ("Name length: " + name.count.out + "%N")
        end

    demonstrate_detachable
            -- Show detachable (possibly void) attribute usage.
        do
            -- nickname is Void by default
            print ("%N=== Detachable Types ===%N")

            if attached nickname as n then
                print ("Nickname: " + n + "%N")
            else
                print ("Nickname is Void (not set)%N")
            end

            -- Now assign a value
            nickname := "Code Archaeologist"

            if attached nickname as n then
                print ("Nickname after assignment: " + n + "%N")
                print ("Nickname length: " + n.count.out + "%N")
            else
                print ("Nickname is Void%N")
            end

            -- Demonstrate object test with detachable
            check_value (nickname)
            check_value (Void)
        end

    check_value (val: detachable STRING)
            -- Check whether a detachable value is attached.
        do
            if attached val as v then
                print ("Value is attached: " + v + "%N")
            else
                print ("Value is Void%N")
            end
        end

end
