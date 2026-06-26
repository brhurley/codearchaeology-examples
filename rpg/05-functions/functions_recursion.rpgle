**FREE
ctl-opt main(main);

dcl-proc main;
  dcl-s n int(10) inz(5);
  dcl-s msg char(50);

  msg = %char(n) + '! = ' + %char(factorial(n));
  dsply msg;
end-proc;

// Classic recursive factorial
dcl-proc factorial;
  dcl-pi *n int(20);
    num int(10) const;
  end-pi;

  if num <= 1;
    return 1;
  endif;

  return num * factorial(num - 1);
end-proc;
