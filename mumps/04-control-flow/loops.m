loops ; Loops in MUMPS
 ; --- Numeric FOR: variable=start:increment:end ---
 write "Up:   "
 for i=1:1:5 write i," "
 write !
 ;
 ; --- A negative increment counts down ---
 write "Down: "
 for i=5:-1:1 write i," "
 write !
 ;
 ; --- Step by 2 ---
 write "Even: "
 for i=2:2:10 write i," "
 write !
 ;
 ; --- While-style loop: argumentless FOR with a QUIT postconditional ---
 ; MUMPS has no WHILE keyword; this is the idiom.
 set n=1,total=0
 for  quit:n>5  set total=total+n,n=n+1
 write "Sum 1..5: ",total,!
 ;
 ; --- Block form: argumentless DO runs the dot-indented lines ---
 set count=0
 for i=1:1:3 do
 . set count=count+i
 . write "i=",i," count=",count,!
 quit
