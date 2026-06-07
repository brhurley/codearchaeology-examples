program ForLoops;

var
    i: Integer;
    total: Integer;

begin
    { Counting up }
    Write('Counting up: ');
    for i := 1 to 5 do
        Write(i, ' ');
    WriteLn;

    { Counting down with downto }
    Write('Counting down: ');
    for i := 5 downto 1 do
        Write(i, ' ');
    WriteLn;

    { Accumulating a sum }
    total := 0;
    for i := 1 to 10 do
        total := total + i;
    WriteLn('Sum of 1 to 10: ', total);
end.
