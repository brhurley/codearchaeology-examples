abbrev ; abbreviated form - terse MUMPS style
 w "5! = ",$$fact(5),!
 q
fact(n) ; recursive factorial
 i n<2 q 1
 q n*$$fact(n-1)
