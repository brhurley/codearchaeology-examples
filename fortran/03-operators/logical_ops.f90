program logical_ops
    implicit none
    logical :: t, f
    integer :: age, score

    t = .true.
    f = .false.

    print *, ".not. true       :", .not. t
    print *, "true  .and. false:", t .and. f
    print *, "true  .or.  false:", t .or. f
    print *, "true  .eqv. true :", t .eqv. t
    print *, "true  .neqv. false:", t .neqv. f

    ! Combining relational and logical operators
    age = 25
    score = 85
    print *, "Eligible:", (age >= 18) .and. (score > 70)

    ! Fortran does NOT guarantee short-circuit evaluation
    ! Both sides of .and. and .or. may be evaluated
end program logical_ops
