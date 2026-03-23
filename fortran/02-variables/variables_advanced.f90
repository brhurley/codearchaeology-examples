program variables_advanced
    implicit none

    ! -- Constants with the parameter attribute --
    real, parameter :: PI = 3.14159265358979
    integer, parameter :: MAX_SIZE = 1000
    character(len=*), parameter :: LANG = "Fortran"

    ! -- Kind specifiers for precision control --
    integer, parameter :: dp = selected_real_kind(15, 307)  ! double precision
    integer, parameter :: sp = selected_real_kind(6, 37)    ! single precision
    integer, parameter :: i64 = selected_int_kind(18)       ! 64-bit integer

    real(kind=dp) :: precise_pi
    real(kind=sp) :: rough_pi
    integer(kind=i64) :: big_number

    ! -- Variables for type conversion demos --
    integer :: int_val
    real :: real_val
    character(len=12) :: str_val

    ! Constants in use
    print *, "PI        =", PI
    print *, "MAX_SIZE  =", MAX_SIZE
    print *, "LANG      = ", LANG

    ! Kind specifiers in action
    precise_pi = 3.141592653589793238_dp
    rough_pi = 3.14159_sp
    big_number = 9000000000000000000_i64

    print *, ""
    print *, "--- Precision comparison ---"
    print *, "rough_pi   =", rough_pi
    print *, "precise_pi =", precise_pi
    print *, "big_number =", big_number

    ! Type conversions using intrinsic functions
    int_val = 7
    real_val = real(int_val)        ! integer to real
    print *, ""
    print *, "--- Type conversions ---"
    print *, "int_val    =", int_val
    print *, "real(7)    =", real_val

    real_val = 9.81
    int_val = int(real_val)         ! real to integer (truncates)
    print *, "int(9.81)  =", int_val

    int_val = nint(9.81)            ! real to nearest integer (rounds)
    print *, "nint(9.81) =", int_val

    ! Number to string
    write(str_val, '(F6.2)') 3.14
    print *, "num to str = ", trim(str_val)

    ! String to number
    str_val = "256"
    read(str_val, *) int_val
    print *, "str to num =", int_val

end program variables_advanced
