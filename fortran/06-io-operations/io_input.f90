program io_input
    implicit none
    character(len=50) :: name
    integer :: age

    write(*, '(A)') "Enter your name:"
    read(*, '(A)') name

    write(*, '(A)') "Enter your age:"
    read(*, *) age

    write(*, '(A, A, A, I0, A)') "Hello, ", trim(name), &
        "! You are ", age, " years old."
end program io_input
