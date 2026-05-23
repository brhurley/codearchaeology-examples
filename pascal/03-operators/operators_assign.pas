program OperatorsAssign;

{$mode objfpc}{$H+}

var
    counter: Integer;
    a, b: Integer;
begin
    counter := 0;
    counter := counter + 1;
    counter := counter + 1;
    counter := counter * 10;
    WriteLn('counter = ', counter);

    a := 5;
    b := 3;

    { Parentheses required around relational sub-expressions }
    if (a > 0) and (b > 0) then
        WriteLn('both positive');

    { Precedence demo: not binds tightest, then *-level, then +-level, then relational }
    WriteLn('1 + 2 * 3       = ', 1 + 2 * 3);          { 7  }
    WriteLn('(1 + 2) * 3     = ', (1 + 2) * 3);        { 9  }
    WriteLn('not False or False = ', not False or False); { True }
end.
