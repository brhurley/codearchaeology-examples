functions ; Functions in MUMPS - subroutines and extrinsic functions
 do greet
 do welcome("Grace")
 write "Square of 7 is ",$$square(7),!
 write "3 + 4 = ",$$add(3,4),!
 write "5! = ",$$fact(5),!
 do scopedemo
 quit
 ;
greet ; Subroutine: no parameters, no return value
 write "Hello from a subroutine!",!
 quit
 ;
welcome(name) ; Subroutine with one parameter
 write "Welcome, ",name,"!",!
 quit
 ;
square(n) ; Extrinsic function: returns a value with QUIT
 quit n*n
 ;
add(a,b) ; Extrinsic function with two parameters
 new sum
 set sum=a+b
 quit sum
 ;
fact(n) ; Recursive extrinsic function: factorial
 if n<2 quit 1
 quit n*$$fact(n-1)
 ;
scopedemo ; Demonstrate local scope with NEW
 new i,total
 set total=0
 for i=1:1:5 set total=total+i
 write "Sum of 1 to 5 = ",total,!
 quit
