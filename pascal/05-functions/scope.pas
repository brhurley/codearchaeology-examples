program Scope;

var
    counter: Integer;   { global variables, visible everywhere below }
    value: Integer;

{ Pass by value: 'x' is a copy, so the caller is unaffected }
procedure TryToChange(x: Integer);
begin
    x := x * 10;
    WriteLn('Inside procedure, x = ', x);
end;

{ Pass by reference: 'var n' modifies the caller's variable directly }
procedure Increment(var n: Integer);
begin
    n := n + 1;
end;

{ Routines can read and modify global variables }
procedure ShowCounter;
begin
    WriteLn('Global counter = ', counter);
end;

begin
    value := 5;
    TryToChange(value);
    WriteLn('After call, value = ', value);   { still 5 - unchanged }

    counter := 0;
    Increment(counter);
    Increment(counter);
    ShowCounter;                               { now 2 }
end.
