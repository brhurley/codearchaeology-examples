byref ; Pass-by-value vs pass-by-reference in MUMPS
 set num=10
 do dblval(num)
 write "After dblval, num = ",num,!
 do dblref(.num)
 write "After dblref, num = ",num,!
 quit
 ;
dblval(x) ; Receives a copy - changes do not affect the caller
 set x=x*2
 quit
 ;
dblref(x) ; Receives a reference - the dot at the call site links it
 set x=x*2
 quit
