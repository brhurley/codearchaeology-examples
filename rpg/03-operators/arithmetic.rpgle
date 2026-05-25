**FREE
dcl-s a int(10) inz(17);
dcl-s b int(10) inz(5);
dcl-s realDiv packed(7:3);
dcl-s power int(20);

// Basic arithmetic operators
dsply ('a + b  = ' + %char(a + b));     // addition
dsply ('a - b  = ' + %char(a - b));     // subtraction
dsply ('a * b  = ' + %char(a * b));     // multiplication

// True division keeps decimal places in a packed field
realDiv = a / b;
dsply ('a / b  = ' + %char(realDiv));

// Integer division and remainder use BIFs, not operators
dsply ('%div   = ' + %char(%div(a:b)));
dsply ('%rem   = ' + %char(%rem(a:b)));

// Exponentiation
power = b ** 2;
dsply ('b ** 2 = ' + %char(power));

*inlr = *on;
