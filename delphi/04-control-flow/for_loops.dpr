program ForLoops;

{$APPTYPE CONSOLE}

var
  I: Integer;
  Sum: Integer;
  C: Char;

begin
  // Count up from 1 to 5
  Write('Up:   ');
  for I := 1 to 5 do
    Write(I, ' ');
  WriteLn;

  // Count down from 5 to 1 with downto
  Write('Down: ');
  for I := 5 downto 1 do
    Write(I, ' ');
  WriteLn;

  // Accumulate a running total
  Sum := 0;
  for I := 1 to 10 do
    Sum := Sum + I;
  WriteLn('Sum of 1..10 = ', Sum);

  // for-in iterates over the characters of a string
  Write('Letters: ');
  for C in 'Delphi' do
    Write(C, '-');
  WriteLn;
end.
