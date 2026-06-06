controlflow ; Conditionals in MUMPS
 ; --- IF executes the rest of the line when the expression is true ---
 set age=20
 if age>17 write "Adult",!
 if age<13 write "Child",!
 ;
 ; --- IF / ELSE rely on $TEST, set by the most recent IF ---
 set score=45
 if score>59 write "Pass",!
 else  write "Fail",!
 ;
 ; --- Postconditionals: a colon after the command name ---
 ; The command runs only when the condition is true.
 set balance=-30
 write:balance<0 "Account overdrawn",!
 write:balance>0 "Account in credit",!
 ;
 ; --- Several commands can follow one IF on the same line ---
 set hour=14
 if hour<12 write "Good morning",! quit
 if hour<18 write "Good afternoon",! quit
 write "Good evening",!
 quit
