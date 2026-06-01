program LoopControl;

{$APPTYPE CONSOLE}

var
  I: Integer;

begin
  // Continue: skip even numbers, print only odds
  Write('Odds:        ');
  for I := 1 to 10 do
  begin
    if I mod 2 = 0 then
      Continue;
    Write(I, ' ');
  end;
  WriteLn;

  // Break: stop as soon as we hit the first multiple of 7
  Write('Before 7x:   ');
  for I := 1 to 100 do
  begin
    if I mod 7 = 0 then
      Break;
    Write(I, ' ');
  end;
  WriteLn;
end.
