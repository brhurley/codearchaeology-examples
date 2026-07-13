**FREE
dcl-s amount packed(11:2) inz(1234.56);
dcl-s qty    int(10) inz(5);
dcl-s total  packed(13:2);
dcl-s msg    char(52);

// Plain text output
msg = 'Order Report';
dsply msg;

// Numeric to character with %CHAR
msg = 'Quantity: ' + %char(qty);
dsply msg;

// Formatted decimal with %EDITC (edit code 1 adds commas)
msg = 'Unit price: ' + %trim(%editc(amount:'1'));
dsply msg;

// Compute and display a total
total = qty * amount;
msg = 'Total: ' + %trim(%editc(total:'1'));
dsply msg;

*inlr = *on;
