program do_loops
    implicit none
    integer :: i
    integer :: total
    integer :: n

    ! Counted DO loop: sum the integers 1 through 5
    total = 0
    do i = 1, 5
        total = total + i
    end do
    write(*, '(A, I0)') "Sum of 1..5 = ", total

    ! DO loop with a stride of -2 (count down)
    do i = 10, 2, -2
        write(*, '(A, I0)') "Countdown: ", i
    end do

    ! DO WHILE loop: halve until the value drops to 1
    n = 100
    do while (n > 1)
        n = n / 2
        write(*, '(A, I0)') "n = ", n
    end do
end program do_loops
