program OperatorsPrecedence;

{$APPTYPE CONSOLE}

var
  R: Integer;
  A, B, C, D: Integer;
begin
  // Multiplicative binds tighter than additive
  R := 2 + 3 * 4;
  WriteLn('2 + 3 * 4       = ', R);        // 14

  R := (2 + 3) * 4;
  WriteLn('(2 + 3) * 4     = ', R);        // 20

  // div and mod sit at the multiplicative level
  R := 20 - 6 div 2;
  WriteLn('20 - 6 div 2    = ', R);        // 17

  A := 1; B := 2; C := 3; D := 4;
  // Parentheses are required around comparisons combined with logical ops
  if (A < B) and (C < D) then
    WriteLn('Both comparisons true');
end.
