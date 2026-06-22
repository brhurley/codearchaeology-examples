MODULE Functions;

FROM StrIO IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt;

(* A function procedure: declares a return type and uses RETURN *)
PROCEDURE Square(n: INTEGER): INTEGER;
BEGIN
  RETURN n * n
END Square;

(* A proper procedure: performs an action, returns nothing *)
PROCEDURE Greet(name: ARRAY OF CHAR);
BEGIN
  WriteString("Hello, ");
  WriteString(name);
  WriteString("!");
  WriteLn
END Greet;

BEGIN
  Greet("Modula-2");
  WriteString("5 squared is ");
  WriteInt(Square(5), 1);    (* Square returns a value used in an expression *)
  WriteLn
END Functions.
