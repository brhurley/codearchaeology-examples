**FREE
dcl-s x int(10) inz(10);
dcl-s y int(10) inz(20);
dcl-s age int(10) inz(25);
dcl-s hasLicense ind inz(*on);

// Relational operators: =  <>  <  >  <=  >=
if x < y;
  dsply 'x is less than y';
endif;

if x <> y;
  dsply 'x is not equal to y';
endif;

// Logical AND
if age >= 18 and hasLicense;
  dsply 'Can drive';
endif;

// Logical OR / NOT
if age < 18 or not hasLicense;
  dsply 'Cannot drive';
else;
  dsply 'All requirements met';
endif;

*inlr = *on;
