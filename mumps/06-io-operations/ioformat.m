ioformat ; Formatted output in MUMPS
 write "=== Output Formatting ===",!
 ;
 ; ?n tabs the cursor to a fixed column, useful for tables
 write "Name",?15,"Score",!
 write "Alice",?15,"95",!
 write "Bob",?15,"88",!
 ;
 ; Numbers are coerced to their canonical string form automatically
 set pi=3.14159
 write "Pi is approximately ",pi,!
 ;
 ; $JUSTIFY(value,width,decimals) rounds and right-aligns a number
 write "Justified: ",$justify(pi,10,2),!
 ;
 ; $FNUMBER inserts thousands separators
 write "Formatted: ",$fnumber(1234567,","),!
 ;
 ; Multiple values and arithmetic can share a single WRITE
 set x=10,y=20
 write "Sum of ",x," and ",y," is ",x+y,!
 quit
