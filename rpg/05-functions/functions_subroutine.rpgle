**FREE
dcl-s price     packed(9:2) inz(100.00);
dcl-s taxRate   packed(5:4) inz(0.0825);
dcl-s taxAmount packed(9:2);
dcl-s total     packed(9:2);
dcl-s msg       char(50);

exsr calcTax;                      // execute the subroutine

msg = 'Total = ' + %char(total);
dsply msg;
*inlr = *on;

// Subroutine: operates directly on the program's variables
begsr calcTax;
  taxAmount = price * taxRate;     // 100.00 * 0.0825 = 8.25
  total = price + taxAmount;       // 108.25
endsr;
