MODULE Loops;

FROM StrIO IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt;

VAR
  i, sum: INTEGER;

BEGIN
  (* FOR loop counting up *)
  WriteString("Count up:");
  FOR i := 1 TO 5 DO
    WriteString(" ");
    WriteInt(i, 1)
  END;
  WriteLn;

  (* FOR loop with BY -1 to count down *)
  WriteString("Count down:");
  FOR i := 5 TO 1 BY -1 DO
    WriteString(" ");
    WriteInt(i, 1)
  END;
  WriteLn;

  (* WHILE loop accumulating a sum *)
  sum := 0;
  i := 1;
  WHILE i <= 5 DO
    sum := sum + i;
    INC(i)
  END;
  WriteString("Sum 1..5 = ");
  WriteInt(sum, 1);
  WriteLn
END Loops.
