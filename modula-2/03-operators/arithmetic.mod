MODULE arithmetic;

FROM StrIO     IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt, WriteCard;
FROM RealIO    IMPORT WriteReal;

VAR
  a, b: INTEGER;
  x, y: REAL;

BEGIN
  a := 17;
  b := 5;

  WriteString("a + b   = "); WriteInt(a + b, 4);   WriteLn;
  WriteString("a - b   = "); WriteInt(a - b, 4);   WriteLn;
  WriteString("a * b   = "); WriteInt(a * b, 4);   WriteLn;
  WriteString("a DIV b = "); WriteInt(a DIV b, 4); WriteLn;
  WriteString("a MOD b = "); WriteInt(a MOD b, 4); WriteLn;

  x := 17.0;
  y := 5.0;
  WriteString("x / y   = "); WriteReal(x / y, 8); WriteLn
END arithmetic.
