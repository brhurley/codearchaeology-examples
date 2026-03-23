program variables
    implicit none

    ! Integer types
    integer :: count
    integer :: year

    ! Real (floating-point) types
    real :: temperature
    real :: pi

    ! Character (string) types
    character(len=20) :: name
    character(len=50) :: greeting

    ! Logical (boolean) type
    logical :: is_valid

    ! Complex number type
    complex :: z

    ! Assign values
    count = 42
    year = 1957
    temperature = 98.6
    pi = 3.14159
    name = "Fortran"
    greeting = "Hello from Fortran!"
    is_valid = .true.
    z = (3.0, 4.0)  ! 3 + 4i

    ! Print all variables
    print *, "count       =", count
    print *, "year        =", year
    print *, "temperature =", temperature
    print *, "pi          =", pi
    print *, "name        = ", trim(name)
    print *, "greeting    = ", trim(greeting)
    print *, "is_valid    =", is_valid
    print *, "complex z   =", z

end program variables
