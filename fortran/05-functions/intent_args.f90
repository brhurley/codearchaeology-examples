module swap_mod
    implicit none
contains

    ! intent(inout): both arguments are read and modified
    subroutine swap(a, b)
        integer, intent(inout) :: a, b
        integer :: temp
        temp = a
        a = b
        b = temp
    end subroutine swap

    ! Multiple intent(out) arguments return multiple results
    subroutine divmod(numerator, denominator, quotient, remainder)
        integer, intent(in)  :: numerator, denominator
        integer, intent(out) :: quotient, remainder
        quotient  = numerator / denominator
        remainder = mod(numerator, denominator)
    end subroutine divmod

end module swap_mod

program intent_demo
    use swap_mod
    implicit none
    integer :: x, y, q, r

    x = 10
    y = 20
    print '(A, I0, A, I0)', "Before swap: x = ", x, ", y = ", y
    call swap(x, y)
    print '(A, I0, A, I0)', "After swap:  x = ", x, ", y = ", y

    call divmod(17, 5, q, r)
    print '(A, I0, A, I0)', "17 / 5 = ", q, " remainder ", r
end program intent_demo
