MODULE HigherOrder;

FROM StrIO IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt;

(* A procedure type: takes an INTEGER, returns an INTEGER *)
TYPE
  IntFunc = PROCEDURE (INTEGER): INTEGER;

PROCEDURE Double(n: INTEGER): INTEGER;
BEGIN
  RETURN n * 2
END Double;

PROCEDURE Negate(n: INTEGER): INTEGER;
BEGIN
  RETURN -n
END Negate;

(* Apply receives a procedure as a parameter and calls it *)
PROCEDURE Apply(f: IntFunc; value: INTEGER): INTEGER;
BEGIN
  RETURN f(value)
END Apply;

VAR
  op: IntFunc;

BEGIN
  WriteString("Apply(Double, 7) = ");
  WriteInt(Apply(Double, 7), 1);
  WriteLn;

  op := Negate;              (* Store a procedure in a variable *)
  WriteString("op(7) = ");
  WriteInt(op(7), 1);        (* Call through the variable *)
  WriteLn
END HigherOrder.
