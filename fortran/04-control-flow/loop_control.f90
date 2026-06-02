program loop_control
    implicit none
    integer :: i, j

    ! CYCLE skips to the next iteration (like "continue")
    do i = 1, 6
        if (mod(i, 2) == 0) cycle   ! skip even numbers
        write(*, '(A, I0)') "Odd: ", i
    end do

    ! EXIT leaves the loop early (like "break")
    do i = 1, 100
        if (i > 3) exit
        write(*, '(A, I0)') "Counting: ", i
    end do

    ! Named loops let EXIT target a specific outer loop
    outer: do i = 1, 3
        inner: do j = 1, 3
            if (i + j == 4) exit outer
            write(*, '(A, I0, A, I0)') "i=", i, " j=", j
        end do inner
    end do outer
end program loop_control
