**FREE
ctl-opt main(main);

dcl-proc main;
  dcl-s text varchar(50) inz('hello world');
  dcl-s msg  char(60);

  toUpper(text);                   // modifies 'text' in place
  msg = 'Result: ' + text;
  dsply msg;
end-proc;

// No return type and no const: parameter is updated by reference
dcl-proc toUpper;
  dcl-pi *n;
    value varchar(50);             // changes here are visible to the caller
  end-pi;

  value = %xlate('abcdefghijklmnopqrstuvwxyz':
                 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' : value);
end-proc;
