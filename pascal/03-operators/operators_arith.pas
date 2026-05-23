program OperatorsArith;

var
    a, b: Integer;
    x, y: Real;
begin
    a := 17;
    b := 5;

    WriteLn('a = ', a, ', b = ', b);
    WriteLn('a + b   = ', a + b);
    WriteLn('a - b   = ', a - b);
    WriteLn('a * b   = ', a * b);
    WriteLn('a div b = ', a div b);   { integer division }
    WriteLn('a mod b = ', a mod b);   { remainder }
    WriteLn('a / b   = ', a / b:0:4); { real division, 4 decimal places }

    x := 2.5;
    y := 4.0;
    WriteLn('x * y   = ', x * y:0:2);
    WriteLn('-x      = ', -x:0:2);    { unary minus }
end.
