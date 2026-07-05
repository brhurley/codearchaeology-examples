program io_read_file
    implicit none
    integer :: unit_num, ios
    character(len=100) :: line

    open(newunit=unit_num, file="output.txt", status="old", &
         action="read", iostat=ios)

    if (ios /= 0) then
        print *, "Error: could not open output.txt"
        stop 1
    end if

    ! Read line by line until end-of-file
    do
        read(unit_num, '(A)', iostat=ios) line
        if (ios /= 0) exit
        print '(A)', trim(line)
    end do

    close(unit_num)
end program io_read_file
