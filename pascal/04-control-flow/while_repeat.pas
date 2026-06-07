program WhileRepeat;

var
    n: Integer;
    sum: Integer;

begin
    { while: test before the body runs }
    n := 1;
    Write('While doubling: ');
    while n <= 16 do
    begin
        Write(n, ' ');
        n := n * 2;
    end;
    WriteLn;

    { repeat: body runs at least once, loops until condition is true }
    n := 1;
    Write('Repeat countdown: ');
    repeat
        Write(n, ' ');
        n := n + 1;
    until n > 5;
    WriteLn;

    { Break and Continue }
    sum := 0;
    n := 0;
    while True do
    begin
        n := n + 1;
        if n > 10 then
            Break;          { exit the loop entirely }
        if n mod 2 = 1 then
            Continue;       { skip odd numbers }
        sum := sum + n;
    end;
    WriteLn('Sum of even numbers 1 to 10: ', sum);
end.
