**FREE
dcl-s result int(10);

// * binds tighter than +
result = 2 + 3 * 4;
dsply ('2 + 3 * 4   = ' + %char(result));   // 14

// Parentheses force addition first
result = (2 + 3) * 4;
dsply ('(2 + 3) * 4 = ' + %char(result));    // 20

// ** binds tighter than +
result = 2 ** 3 + 1;
dsply ('2 ** 3 + 1  = ' + %char(result));    // 9

*inlr = *on;
