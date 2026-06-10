**FREE
dcl-s i int(10);
dcl-s count int(10) inz(0);
dcl-s n int(10) inz(10);
dcl-s msg varchar(50);

// Counted FOR loop: 1 to 3
for i = 1 to 3;
  msg = 'FOR iteration ' + %char(i);
  dsply msg;
endfor;

// FOR counting down by 2: 6, 4, 2
for i = 6 downto 2 by 2;
  msg = 'Countdown ' + %char(i);
  dsply msg;
endfor;

// DOW: condition checked BEFORE each pass
dow count < 3;
  count += 1;
  msg = 'DOW count ' + %char(count);
  dsply msg;
enddo;

// DOU: body runs at least once, condition checked AFTER
dou n <= 8;
  n -= 1;
  msg = 'DOU n ' + %char(n);
  dsply msg;
enddo;

*inlr = *on;
