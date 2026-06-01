program WhileRepeat;

{$APPTYPE CONSOLE}

var
  N: Integer;

begin
  // while: test before the body runs
  N := 1;
  Write('Powers of 2: ');
  while N <= 16 do
  begin
    Write(N, ' ');
    N := N * 2;
  end;
  WriteLn;

  // repeat..until: body runs first, then the condition is tested
  N := 5;
  Write('Countdown:   ');
  repeat
    Write(N, ' ');
    Dec(N);
  until N = 0;
  WriteLn;
end.
