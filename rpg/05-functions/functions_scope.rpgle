**FREE
ctl-opt main(main);

dcl-s globalCount int(10) inz(0);   // global - shared by all procedures

dcl-proc main;
  dcl-s msg char(50);

  increment();
  increment();
  increment();

  msg = 'Global count = ' + %char(globalCount);
  dsply msg;
end-proc;

dcl-proc increment;
  dcl-s localTemp int(10);          // local - re-created on every call
  localTemp = globalCount + 1;
  globalCount = localTemp;          // global persists between calls
end-proc;
