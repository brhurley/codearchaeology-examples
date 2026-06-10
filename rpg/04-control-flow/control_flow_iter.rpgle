**FREE
dcl-s i int(10);
dcl-s msg varchar(50);

for i = 1 to 10;
  // Skip even numbers - jump to the next iteration
  if %rem(i:2) = 0;
    iter;
  endif;

  // Stop the loop entirely once we reach 7
  if i = 7;
    leave;
  endif;

  msg = 'Odd value: ' + %char(i);
  dsply msg;
endfor;

*inlr = *on;
