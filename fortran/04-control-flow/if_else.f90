program if_else
    implicit none
    integer :: score

    score = 85

    if (score >= 90) then
        print *, "Grade: A"
    else if (score >= 80) then
        print *, "Grade: B"
    else if (score >= 70) then
        print *, "Grade: C"
    else
        print *, "Grade: F (failing)"
    end if

    ! A single-line if has no "then" and no "end if"
    if (score >= 60) print *, "Result: Passed"
end program if_else
