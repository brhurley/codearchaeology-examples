module recur
    implicit none
contains

    recursive function factorial(n) result(fact)
        integer, intent(in) :: n
        integer :: fact
        if (n <= 1) then
            fact = 1
        else
            fact = n * factorial(n - 1)
        end if
    end function factorial

    recursive function fib(n) result(f)
        integer, intent(in) :: n
        integer :: f
        if (n < 2) then
            f = n
        else
            f = fib(n - 1) + fib(n - 2)
        end if
    end function fib

end module recur

program recursion_demo
    use recur
    implicit none
    integer :: i

    print '(A)', "Factorials:"
    do i = 1, 6
        print '(A, I0, A, I0)', "  ", i, "! = ", factorial(i)
    end do

    print '(A)', "Fibonacci sequence:"
    print '(10(I0, 1X))', (fib(i), i = 0, 9)
end program recursion_demo
