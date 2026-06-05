MODULE LoopControl;

FROM StrIO IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt;

VAR
  i, n: INTEGER;

BEGIN
  (* LOOP with EXIT - find the first multiple of 7 at or above 21 *)
  i := 21;
  LOOP
    IF i MOD 7 = 0 THEN
      EXIT
    END;
    INC(i)
  END;
  WriteString("First multiple of 7 >= 21: ");
  WriteInt(i, 1);
  WriteLn;

  (* REPEAT ... UNTIL - body always runs at least once *)
  n := 1;
  WriteString("Powers of 2:");
  REPEAT
    WriteString(" ");
    WriteInt(n, 1);
    n := n * 2
  UNTIL n > 16;
  WriteLn
END LoopControl.
