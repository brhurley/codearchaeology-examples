program FunctionsBasic;

{$APPTYPE CONSOLE}

// A function returns a value via the implicit Result variable.
function Add(A, B: Integer): Integer;
begin
  Result := A + B;
end;

// A procedure performs an action but returns nothing.
procedure Greet(const Name: string);
begin
  WriteLn('Hello, ', Name, '!');
end;

begin
  WriteLn('3 + 4 = ', Add(3, 4));
  Greet('Delphi');
end.
