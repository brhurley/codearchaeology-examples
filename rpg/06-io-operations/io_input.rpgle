**FREE
dcl-s custName char(20);
dcl-s ageChar  char(3);
dcl-s age      int(5);
dcl-s msg      char(52);

// DSPLY with a response field prompts for and reads input
dsply 'Enter your name:' '' custName;
dsply 'Enter your age:' '' ageChar;

// Convert the character input to a number
age = %int(ageChar);

msg = 'Hello, ' + %trim(custName) + '!';
dsply msg;

if age >= 18;
  msg = 'Status: adult';
else;
  msg = 'Status: minor';
endif;
dsply msg;

*inlr = *on;
