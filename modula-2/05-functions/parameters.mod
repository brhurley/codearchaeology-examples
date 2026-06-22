MODULE Parameters;

FROM StrIO IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt;

(* Value parameter: x is a copy, the caller's variable is untouched *)
PROCEDURE TryToChange(x: INTEGER);
BEGIN
  x := 999
END TryToChange;

(* VAR parameters: a and b are passed by reference and can be modified *)
PROCEDURE Swap(VAR a, b: INTEGER);
VAR
  temp: INTEGER;
BEGIN
  temp := a;
  a := b;
  b := temp
END Swap;

VAR
  p, q: INTEGER;

BEGIN
  p := 10;
  q := 20;

  TryToChange(p);
  WriteString("After TryToChange, p = ");
  WriteInt(p, 1);            (* Still 10 - the copy was changed, not p *)
  WriteLn;

  Swap(p, q);
  WriteString("After Swap, p = ");
  WriteInt(p, 1);
  WriteString(", q = ");
  WriteInt(q, 1);
  WriteLn
END Parameters.
