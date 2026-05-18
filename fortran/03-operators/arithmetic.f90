program arithmetic
    implicit none
    integer :: a, b
    real :: x, y, result

    a = 17
    b = 5
    x = 17.0
    y = 5.0

    ! Integer division truncates toward zero
    print *, "Integer 17 / 5 =", a / b
    print *, "Integer 17 mod 5 =", mod(a, b)

    ! Real division gives a true quotient
    print *, "Real 17.0 / 5.0 =", x / y

    ! Exponentiation with ** is a true operator, not a function call
    result = 2.0 ** 10
    print *, "2.0 ** 10 =", result

    ! Mixed mode promotes integer to real
    print *, "1 + 2.5 =", 1 + 2.5

    ! Negative exponent requires a real base
    print *, "2.0 ** (-3) =", 2.0 ** (-3)
end program arithmetic
