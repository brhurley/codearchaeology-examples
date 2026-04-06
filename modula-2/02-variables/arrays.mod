MODULE Arrays;

FROM StrIO IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt, WriteCard;

TYPE
  NameStr = ARRAY [0..29] OF CHAR;

VAR
  name: NameStr;
  numbers: ARRAY [1..5] OF INTEGER;
  matrix: ARRAY [0..1] OF ARRAY [0..2] OF INTEGER;
  i: CARDINAL;

BEGIN
  (* Strings are character arrays *)
  name := "Niklaus Wirth";
  WriteString("Creator: ");
  WriteString(name);
  WriteLn;

  (* Integer array *)
  numbers[1] := 10;
  numbers[2] := 20;
  numbers[3] := 30;
  numbers[4] := 40;
  numbers[5] := 50;

  WriteString("Numbers:");
  FOR i := 1 TO 5 DO
    WriteString(" ");
    WriteInt(numbers[i], 0)
  END;
  WriteLn;

  (* Two-dimensional array *)
  matrix[0][0] := 1;
  matrix[0][1] := 2;
  matrix[0][2] := 3;
  matrix[1][0] := 4;
  matrix[1][1] := 5;
  matrix[1][2] := 6;

  WriteString("Matrix row 0:");
  FOR i := 0 TO 2 DO
    WriteString(" ");
    WriteInt(matrix[0][i], 0)
  END;
  WriteLn;

  WriteString("Matrix row 1:");
  FOR i := 0 TO 2 DO
    WriteString(" ");
    WriteInt(matrix[1][i], 0)
  END;
  WriteLn
END Arrays.
