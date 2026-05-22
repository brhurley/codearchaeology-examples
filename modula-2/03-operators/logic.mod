MODULE logic;

FROM StrIO IMPORT WriteString, WriteLn;

PROCEDURE WriteBool(b: BOOLEAN);
BEGIN
  IF b THEN WriteString("TRUE ") ELSE WriteString("FALSE") END
END WriteBool;

VAR
  a, b: INTEGER;
  p, q: BOOLEAN;

BEGIN
  a := 7;
  b := 12;

  WriteString("a < b      -> "); WriteBool(a < b);      WriteLn;
  WriteString("a = b      -> "); WriteBool(a = b);      WriteLn;
  WriteString("a # b      -> "); WriteBool(a # b);      WriteLn;
  WriteString("a >= 7     -> "); WriteBool(a >= 7);     WriteLn;

  p := (a < b);
  q := (a MOD 2 = 0);

  WriteString("p AND q    -> "); WriteBool(p AND q);    WriteLn;
  WriteString("p OR  q    -> "); WriteBool(p OR q);     WriteLn;
  WriteString("NOT p      -> "); WriteBool(NOT p);      WriteLn
END logic.
