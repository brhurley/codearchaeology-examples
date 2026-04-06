MODULE Conversions;

FROM StrIO IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt, WriteCard;

VAR
  i: INTEGER;
  c: CARDINAL;
  r: REAL;
  ch: CHAR;
  b: BOOLEAN;

BEGIN
  (* INTEGER to CARDINAL *)
  i := 42;
  c := VAL(CARDINAL, i);
  WriteString("Integer 42 as Cardinal: ");
  WriteCard(c, 0);
  WriteLn;

  (* CARDINAL to INTEGER *)
  c := 100;
  i := VAL(INTEGER, c);
  WriteString("Cardinal 100 as Integer: ");
  WriteInt(i, 0);
  WriteLn;

  (* REAL to INTEGER (truncates) *)
  r := 9.7;
  i := INT(r);
  WriteString("Real 9.7 as Integer: ");
  WriteInt(i, 0);
  WriteLn;

  (* INTEGER to REAL *)
  i := 25;
  r := FLOAT(i);
  WriteString("Integer 25 as Real: ");
  WriteInt(INT(r), 0);
  WriteString(" (converted back)");
  WriteLn;

  (* CHAR to ordinal value *)
  ch := 'A';
  c := ORD(ch);
  WriteString("ORD('A'): ");
  WriteCard(c, 0);
  WriteLn;

  (* Ordinal to CHAR *)
  c := 90;
  ch := CHR(c);
  WriteString("CHR(90): ");
  WriteString("Z");
  WriteLn;

  (* BOOLEAN ordinals *)
  b := TRUE;
  WriteString("ORD(TRUE): ");
  WriteCard(ORD(b), 0);
  WriteLn;

  b := FALSE;
  WriteString("ORD(FALSE): ");
  WriteCard(ORD(b), 0);
  WriteLn
END Conversions.
