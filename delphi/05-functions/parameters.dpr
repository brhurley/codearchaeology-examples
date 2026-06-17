program Parameters;

{$APPTYPE CONSOLE}

// const parameter is read-only; Greeting has a default value.
procedure Greet(const Name: string; const Greeting: string = 'Hello');
begin
  WriteLn(Greeting, ', ', Name, '!');
end;

// var parameter is passed by reference - the change is visible to the caller.
procedure Double(var Value: Integer);
begin
  Value := Value * 2;
end;

// out parameters are used to return multiple values.
procedure SplitName(const FullName: string; out First, Last: string);
var
  SpacePos: Integer;
begin
  SpacePos := Pos(' ', FullName);
  First := Copy(FullName, 1, SpacePos - 1);
  Last := Copy(FullName, SpacePos + 1, Length(FullName));
end;

var
  N: Integer;
  FirstName, LastName: string;
begin
  Greet('World');              // uses the default greeting
  Greet('Delphi', 'Welcome');  // overrides the default

  N := 21;
  Double(N);                   // var parameter modifies N in place
  WriteLn('Doubled: ', N);

  SplitName('Anders Hejlsberg', FirstName, LastName);
  WriteLn('First: ', FirstName);
  WriteLn('Last: ', LastName);
end.
