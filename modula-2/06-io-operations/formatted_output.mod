MODULE FormattedOutput;

FROM StrIO IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt, WriteCard;
FROM StdIO IMPORT Write;

VAR
  i: CARDINAL;

BEGIN
  WriteString("Formatted output in Modula-2");
  WriteLn;
  WriteLn;

  (* Integers right-justified in a field of width 6 *)
  WriteString("Right-justified integers:");
  WriteLn;
  WriteInt(5, 6);    WriteLn;
  WriteInt(42, 6);   WriteLn;
  WriteInt(-100, 6); WriteLn;
  WriteLn;

  (* A cardinal (unsigned) printed with no padding *)
  WriteString("Cardinal value: ");
  WriteCard(65535, 0);
  WriteLn;
  WriteLn;

  (* An aligned table built purely from field widths *)
  WriteString("Squares table:");
  WriteLn;
  FOR i := 1 TO 5 DO
    WriteCard(i, 3);
    WriteString("  ->");
    WriteCard(i * i, 5);
    WriteLn
  END;
  WriteLn;

  (* Character-by-character output with StdIO.Write *)
  WriteString("Row of stars: ");
  FOR i := 1 TO 10 DO
    Write('*')
  END;
  WriteLn
END FormattedOutput.
