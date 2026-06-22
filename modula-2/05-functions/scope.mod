MODULE Scope;

FROM StrIO IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt;

VAR
  counter: INTEGER;          (* Module-level (global) variable *)

PROCEDURE Increment;
VAR
  step: INTEGER;             (* Local: created and destroyed each call *)
BEGIN
  step := 1;
  counter := counter + step  (* Can read and write the global counter *)
END Increment;

(* Outer contains a nested procedure Inner *)
PROCEDURE Outer;
VAR
  message: ARRAY [0..20] OF CHAR;

  PROCEDURE Inner;
  BEGIN
    WriteString(message);    (* Inner sees Outer's local variable *)
    WriteLn
  END Inner;

BEGIN
  message := "Called from Inner";
  Inner                       (* Inner is only visible inside Outer *)
END Outer;

BEGIN
  counter := 0;
  Increment;
  Increment;
  Increment;
  WriteString("counter = ");
  WriteInt(counter, 1);
  WriteLn;
  Outer
END Scope.
