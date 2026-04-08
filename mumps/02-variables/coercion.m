coercion ; Type coercion in MUMPS
 ;
 ; Arithmetic operators force numeric interpretation
 set x="42"
 write """42""+8=",(x+8),!
 ;
 ; Leading numeric characters are extracted
 set mixed="123abc"
 write """123abc""+7=",(mixed+7),!
 ;
 ; Non-numeric strings evaluate to 0 in numeric context
 set word="hello"
 write """hello""+5=",(word+5),!
 ;
 ; Decimal and negative strings work too
 set neg="-3.5"
 write """-3.5""*2=",(neg*2),!
 ;
 ; Numeric comparison: > < = use numeric interpretation
 write "10>9=",(10>9),!
 ;
 ; String comparison: ] (follows) uses ASCII collation
 ; "9" sorts AFTER "10" because "9" > "1" character-by-character
 write """9""]""10""=",("9"]"10"),!
 write """10""]""9""=",("10"]"9"),!
 ;
 ; Boolean operators: & (and), ' (not)
 ; Any non-zero value is true, 0 is false
 write "1&1=",(1&1),!
 write "1&0=",(1&0),!
 write "'0=",('0),!
 write "'1=",('1),!
 ;
 ; The unary + operator forces numeric interpretation
 write "+""007""=",(+"007"),!
 write "+""3.50""=",(+"3.50"),!
 write "+""abc""=",(+"abc"),!
 quit
