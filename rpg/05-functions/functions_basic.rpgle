**FREE
ctl-opt main(main);

dcl-proc main;
  dcl-s result packed(7:0);
  dcl-s msg char(50);

  result = addNumbers(15 : 27);
  msg = 'Sum = ' + %char(result);
  dsply msg;
end-proc;

// A subprocedure that takes two parameters and returns a value
dcl-proc addNumbers;
  dcl-pi *n packed(7:0);       // *n means an unnamed (anonymous) interface
    a packed(7:0) const;       // const = read-only, passed efficiently
    b packed(7:0) const;
  end-pi;

  return a + b;
end-proc;
