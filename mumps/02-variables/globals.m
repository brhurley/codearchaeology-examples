globals ; Hierarchical globals in MUMPS
 ;
 ; Local variable - exists only during execution
 set localVar="I am local"
 write "Local: ",localVar,!
 ;
 ; Global variables (^prefix) persist to disk
 set ^color(1)="Red"
 set ^color(2)="Green"
 set ^color(3)="Blue"
 ;
 ; Traverse a global with $ORDER()
 write !,"Colors in ^color:",!
 set i=""
 for  set i=$order(^color(i)) quit:i=""  do
 . write "  ^color(",i,")=",^color(i),!
 ;
 ; Globals support multiple subscript levels
 set ^employee("E100","name")="Ada Lovelace"
 set ^employee("E100","dept")="Engineering"
 set ^employee("E100","skills",1)="Analysis"
 set ^employee("E100","skills",2)="Mathematics"
 ;
 write !,"Employee record:",!
 write "  Name: ",^employee("E100","name"),!
 write "  Dept: ",^employee("E100","dept"),!
 ;
 ; Traverse subscripts at the skills level
 write "  Skills:",!
 set s=""
 for  set s=$order(^employee("E100","skills",s)) quit:s=""  do
 . write "    ",s,": ",^employee("E100","skills",s),!
 ;
 ; $DATA() return values for globals:
 ;   0 = undefined
 ;   1 = has value, no descendants
 ;  10 = no value, has descendants
 ;  11 = has value AND descendants
 write !,"$data(^employee(""E100""))=",$data(^employee("E100")),!
 write "$data(^employee(""E100"",""name""))=",$data(^employee("E100","name")),!
 write "$data(^employee(""E999""))=",$data(^employee("E999")),!
 ;
 ; Clean up globals so they don't persist between runs
 kill ^color,^employee
 quit
