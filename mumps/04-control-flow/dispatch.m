dispatch ; $SELECT and GOTO in MUMPS
 ; --- $SELECT returns the value after the first true condition ---
 for temp=50,72,95 do
 . set label=$select(temp<60:"cold",temp<80:"mild",1:"hot")
 . write temp,"F is ",label,!
 ;
 ; --- $SELECT as an inline ternary (if/else expression) ---
 set n=7
 write n," is ",$select(n#2=0:"even",1:"odd"),!
 ;
 ; --- GOTO transfers control to a label (use sparingly) ---
 set tries=0
retry ; loop target
 set tries=tries+1
 write "Attempt ",tries,!
 goto:tries<3 retry
 write "Done after ",tries," attempts",!
 quit
