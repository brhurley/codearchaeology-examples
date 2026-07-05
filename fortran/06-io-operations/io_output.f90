program io_output
    implicit none
    integer :: apples = 5
    real :: price = 2.75

    ! List-directed output: the compiler picks the spacing
    print *, "Fortran I/O demo"

    ! Formatted output: you control the layout exactly
    write(*, '(A, I0, A)') "You have ", apples, " apples."
    write(*, '(A, F5.2)') "Price each: $", price
    write(*, '(A, F7.2)') "Total cost: $", apples * price
end program io_output
