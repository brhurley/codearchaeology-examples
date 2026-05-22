operators ; Operators in MUMPS
 ; --- Arithmetic operators ---
 set a=10,b=4
 write "a + b  = ",a+b,!
 write "a - b  = ",a-b,!
 write "a * b  = ",a*b,!
 write "a / b  = ",a/b,!
 write "a \ b  = ",a\b,!
 write "a # b  = ",a#b,!
 write "a ** b = ",a**b,!
 write "-a     = ",-a,!
 ;
 ; --- Typeless numeric coercion ---
 ; A string is converted to a number by taking its leading numeric prefix.
 set s="42abc"
 write "s + 8  = ",s+8,!
 write "s * 2  = ",s*2,!
 ;
 ; --- String concatenation with _ ---
 set first="Hello",second="World"
 write first_", "_second_"!",!
 ;
 ; --- Comparison operators ---
 ; ' is the NOT prefix: '= means not equal, '> means not greater than.
 write "5 = 5  : ",5=5,!
 write "5 '= 6 : ",5'=6,!
 write "5 > 3  : ",5>3,!
 write "5 < 3  : ",5<3,!
 write "5 '> 3 : ",5'>3,!
 ;
 ; --- Logical operators ---
 ; & is AND, ! is OR, ' is NOT. Any nonzero number is true.
 write "1 & 0  : ",1&0,!
 write "1 ! 0  : ",1!0,!
 write "'1     : ",'1,!
 write "'0     : ",'0,!
 ;
 ; --- String operators ---
 ; [ tests substring containment; ] tests collation order.
 write "hello [ ell : ","hello"["ell",!
 write "abd ] abc   : ","abd"]"abc",!
 ;
 ; --- Pattern match operator ? ---
 ; 3A3N means exactly 3 alphabetic followed by exactly 3 numeric chars.
 write "abc123 ? 3A3N : ","abc123"?3A3N,!
 write "ab12   ? 3A3N : ","ab12"?3A3N,!
 ;
 ; --- Left-to-right evaluation (no precedence) ---
 write "2+3*4   = ",2+3*4,!
 write "2+(3*4) = ",2+(3*4),!
 quit
