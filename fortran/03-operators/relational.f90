program relational
    implicit none
    integer :: a, b
    logical :: result

    a = 10
    b = 20

    ! Modern symbolic form (Fortran 90+)
    print *, "10 == 20 :", a == b
    print *, "10 /= 20 :", a /= b
    print *, "10 <  20 :", a < b
    print *, "10 >= 20 :", a >= b

    ! Classic dotted form - still valid in modern Fortran
    print *, "10 .lt. 20 :", a .lt. b
    print *, "10 .eq. 20 :", a .eq. b

    ! Relational expressions produce logical values
    result = (a * 2) == b
    print *, "(10 * 2) == 20 :", result

    ! Beware: comparing reals for equality is rarely safe
    print *, "0.1 + 0.2 == 0.3 :", (0.1 + 0.2 == 0.3)
end program relational
