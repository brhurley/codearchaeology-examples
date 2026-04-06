MODULE Variables;

FROM StrIO IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt, WriteCard;

VAR
  age: INTEGER;
  count: CARDINAL;
  temperature: REAL;
  letter: CHAR;
  active: BOOLEAN;

BEGIN
  (* INTEGER: signed whole numbers *)
  age := 47;
  WriteString("Age: ");
  WriteInt(age, 0);
  WriteLn;

  (* CARDINAL: unsigned whole numbers (zero and positive) *)
  count := 1024;
  WriteString("Count: ");
  WriteCard(count, 0);
  WriteLn;

  (* REAL: floating-point numbers *)
  temperature := 36.6;
  WriteString("Temperature: ");
  (* Display as integer part for simplicity *)
  WriteInt(INT(temperature), 0);
  WriteString(" (integer part)");
  WriteLn;

  (* CHAR: single characters *)
  letter := 'M';
  WriteString("Letter: ");
  WriteString("M");
  WriteLn;

  (* BOOLEAN: TRUE or FALSE *)
  active := TRUE;
  WriteString("Active: ");
  IF active THEN
    WriteString("TRUE")
  ELSE
    WriteString("FALSE")
  END;
  WriteLn
END Variables.
