fizzbuzz ; FizzBuzz - combining MUMPS control flow
 for i=1:1:15 do check(i)
 quit
 ;
check(n) ; Classify one number, n
 if n#15=0 write "FizzBuzz",! quit
 if n#3=0 write "Fizz",! quit
 if n#5=0 write "Buzz",! quit
 write n,!
 quit
