program Functions;

{ A function returns a value - assign to the function name }
function Square(n: Integer): Integer;
begin
    Square := n * n;
end;

{ Free Pascal also lets you assign to the 'Result' identifier }
function Add(a, b: Integer): Integer;
begin
    Result := a + b;
end;

{ A procedure performs an action but returns no value }
procedure Greet(personName: string);
begin
    WriteLn('Hello, ', personName, '!');
end;

{ Procedures can take parameters and use local variables }
procedure PrintLine(count: Integer);
var
    i: Integer;
begin
    for i := 1 to count do
        Write('-');
    WriteLn;
end;

begin
    Greet('Pascal');
    PrintLine(20);
    WriteLn('5 squared is ', Square(5));
    WriteLn('3 + 4 = ', Add(3, 4));
end.
