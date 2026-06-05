MODULE Conditionals;

FROM StrIO IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt;

VAR
  score: INTEGER;

BEGIN
  score := 78;

  WriteString("Score: ");
  WriteInt(score, 1);
  WriteLn;

  (* IF / ELSIF / ELSE chain - no braces, closed with END *)
  IF score >= 90 THEN
    WriteString("Grade: A")
  ELSIF score >= 80 THEN
    WriteString("Grade: B")
  ELSIF score >= 70 THEN
    WriteString("Grade: C")
  ELSE
    WriteString("Grade: F")
  END;
  WriteLn;

  (* Boolean operators: AND, OR, NOT *)
  IF (score > 0) AND (score < 100) THEN
    WriteString("Valid percentage")
  END;
  WriteLn
END Conditionals.
