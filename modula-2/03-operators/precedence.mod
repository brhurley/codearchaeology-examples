MODULE precedence;

FROM StrIO     IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt;

VAR
  result, counter: INTEGER;

BEGIN
  (* Mixing precedence levels:
     2 + 3 * 4   = 2 + 12 = 14
     (2 + 3) * 4 = 5  * 4 = 20 *)
  result := 2 + 3 * 4;
  WriteString("2 + 3 * 4    = "); WriteInt(result, 3); WriteLn;

  result := (2 + 3) * 4;
  WriteString("(2 + 3) * 4  = "); WriteInt(result, 3); WriteLn;

  (* Relational ops are LOWEST priority — parens are mandatory *)
  IF (result > 10) AND (result < 100) THEN
    WriteString("result is two digits"); WriteLn
  END;

  (* Modula-2 has no += operator; use INC / DEC instead *)
  counter := 10;
  INC(counter);        (* counter := counter + 1 *)
  INC(counter, 5);     (* counter := counter + 5 *)
  DEC(counter, 2);     (* counter := counter - 2 *)
  WriteString("counter      = "); WriteInt(counter, 3); WriteLn
END precedence.
