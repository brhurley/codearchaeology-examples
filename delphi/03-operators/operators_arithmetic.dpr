program OperatorsArithmetic;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  A, B: Integer;
  X, Y: Double;
begin
  A := 17;
  B := 5;

  WriteLn('Integer arithmetic with A=17, B=5');
  WriteLn('A + B   = ', A + B);
  WriteLn('A - B   = ', A - B);
  WriteLn('A * B   = ', A * B);
  WriteLn('A div B = ', A div B);   // integer division
  WriteLn('A mod B = ', A mod B);   // remainder
  WriteLn('-A      = ', -A);

  X := 10.0;
  Y := 4.0;
  WriteLn;
  WriteLn('Real arithmetic with X=10.0, Y=4.0');
  WriteLn(Format('X / Y = %.4f', [X / Y]));
  WriteLn(Format('Sqrt(X) = %.4f', [Sqrt(X)]));
end.
