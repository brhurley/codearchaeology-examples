program string_ops
    implicit none
    character(len=20) :: first, last
    character(len=50) :: full

    first = "Grace"
    last  = "Hopper"

    ! Concatenation with // - note that fixed-length strings are padded with spaces
    full = trim(first) // " " // trim(last)
    print *, "Full name: [", trim(full), "]"

    ! Without trim, you get the padding spaces too
    full = first // " " // last
    print *, "Untrimmed: [", full, "]"

    ! String comparison uses the same relational operators
    print *, "'abc' < 'abd' :", "abc" < "abd"
end program string_ops
