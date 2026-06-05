MODULE CaseDemo;

FROM StrIO IMPORT WriteString, WriteLn;

VAR
  day: INTEGER;

BEGIN
  day := 3;

  WriteString("Day type: ");
  CASE day OF
    1..5: WriteString("Weekday") |
    6, 7: WriteString("Weekend")
  ELSE
    WriteString("Invalid day")
  END;
  WriteLn
END CaseDemo.
