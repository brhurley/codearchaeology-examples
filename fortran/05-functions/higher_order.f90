module ops
    implicit none
contains

    function add(a, b) result(r)
        real, intent(in) :: a, b
        real :: r
        r = a + b
    end function add

    function multiply(a, b) result(r)
        real, intent(in) :: a, b
        real :: r
        r = a * b
    end function multiply

    ! apply takes another function as its first argument
    function apply(func, x, y) result(r)
        real, intent(in) :: x, y
        real :: r
        interface
            function func(a, b) result(res)
                real, intent(in) :: a, b
                real :: res
            end function func
        end interface
        r = func(x, y)
    end function apply

end module ops

program higher_order_demo
    use ops
    implicit none

    print '(A, F6.2)', "add(3, 4)      = ", apply(add, 3.0, 4.0)
    print '(A, F6.2)', "multiply(3, 4) = ", apply(multiply, 3.0, 4.0)
end program higher_order_demo
