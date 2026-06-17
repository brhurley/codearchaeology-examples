program Scope;

{$APPTYPE CONSOLE}

var
  // Global variable: visible to every routine in the program.
  CallCount: Integer;

procedure DoWork;
var
  // Local variable: exists only during this call.
  LocalValue: Integer;
begin
  Inc(CallCount);              // modifies the global
  LocalValue := CallCount * 10;
  WriteLn('Call #', CallCount, ' -> local value ', LocalValue);
end;

// Outer contains a nested routine, Inner.
procedure Outer;
var
  Shared: Integer;

  // Inner is nested inside Outer and can see Outer's local variables.
  procedure Inner;
  begin
    Shared := Shared + 1;
  end;

begin
  Shared := 100;
  Inner;
  Inner;
  WriteLn('Shared after two Inner calls: ', Shared);
end;

begin
  CallCount := 0;
  DoWork;
  DoWork;
  DoWork;
  Outer;
end.
