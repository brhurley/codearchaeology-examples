module greeter
    implicit none
contains

    subroutine greet(name, greeting)
        character(len=*), intent(in) :: name
        character(len=*), intent(in), optional :: greeting

        if (present(greeting)) then
            print '(A)', greeting // ", " // trim(name) // "!"
        else
            print '(A)', "Hello, " // trim(name) // "!"
        end if
    end subroutine greet

end module greeter

program optional_demo
    use greeter
    implicit none

    ! Call with only the required argument
    call greet("Ada")

    ! Call with the optional argument supplied
    call greet("Grace", "Welcome")

    ! Keyword arguments name parameters explicitly
    call greet(name="Alan", greeting="Greetings")
end program optional_demo
