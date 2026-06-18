module geometry
    implicit none
contains

    ! A function takes inputs and returns a single value
    function circle_area(radius) result(area)
        real, intent(in) :: radius
        real :: area
        real, parameter :: pi = 3.14159265
        area = pi * radius * radius
    end function circle_area

    ! A subroutine performs an action and returns nothing
    subroutine print_banner(title)
        character(len=*), intent(in) :: title
        print '(A)', "==============="
        print '(A)', trim(title)
        print '(A)', "==============="
    end subroutine print_banner

end module geometry

program functions_demo
    use geometry
    implicit none
    real :: area

    call print_banner("Circle Area")

    area = circle_area(2.0)
    print '(A, F8.4)', "Area of radius 2.0: ", area
end program functions_demo
