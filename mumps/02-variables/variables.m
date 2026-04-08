variables ; Local variables in MUMPS
 ; Assign variables with SET (or abbreviated S)
 set name="MUMPS"
 set year=1967
 set pi=3.14159
 ;
 ; All values are stored as strings internally
 write "name=",name,!
 write "year=",year,!
 write "pi=",pi,!
 ;
 ; Multiple variables can be set to the same value
 set (a,b,c)=0
 write "a=",a," b=",b," c=",c,!
 ;
 ; String concatenation uses the _ operator
 set first="Hello"
 set second="World"
 set greeting=first_", "_second_"!"
 write "greeting=",greeting,!
 ;
 ; KILL removes a variable entirely
 kill greeting
 ;
 ; $DATA() checks if a variable is defined
 ; Returns 0 if undefined, 1 if defined with a value
 write "$data(greeting)=",$data(greeting),!
 write "$data(name)=",$data(name),!
 ;
 ; $GET() returns a variable's value or a default if undefined
 write "$get(greeting,""gone"")=",$get(greeting,"gone"),!
 ;
 ; Special variables (intrinsic) start with $
 write "$horolog=",$horolog,!
 write "$job=",$job,!
 quit
