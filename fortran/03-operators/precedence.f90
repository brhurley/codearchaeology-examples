program precedence
    implicit none
    integer :: result

    ! Right-associative exponentiation
    result = 2 ** 3 ** 2
    print *, "2 ** 3 ** 2 =", result   ! 512, not 64

    ! Standard precedence: * before +
    print *, "2 + 3 * 4 =", 2 + 3 * 4   ! 14, not 20

    ! Parentheses force evaluation order
    print *, "(2 + 3) * 4 =", (2 + 3) * 4   ! 20

    ! Mixing relational and logical
    print *, "1 < 2 .and. 3 > 2 :", 1 < 2 .and. 3 > 2

    ! Unary minus has lower precedence than **
    print *, "-2 ** 2 =", -2 ** 2   ! -4, parsed as -(2**2)
end program precedence
