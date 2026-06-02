program select_case
    implicit none
    integer :: day
    character(len=1) :: grade

    day = 3
    select case (day)
    case (1)
        print *, "Monday"
    case (2:5)
        print *, "A midweek day"
    case (6, 7)
        print *, "Weekend!"
    case default
        print *, "Invalid day"
    end select

    grade = "B"
    select case (grade)
    case ("A", "B")
        print *, "Excellent work"
    case ("C", "D")
        print *, "Room to improve"
    case default
        print *, "See me after class"
    end select
end program select_case
