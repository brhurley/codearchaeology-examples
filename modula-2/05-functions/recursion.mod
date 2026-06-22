MODULE Recursion;

FROM StrIO IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteCard;

(* Factorial: n! = n * (n-1)! with base case 0! = 1! = 1 *)
PROCEDURE Factorial(n: CARDINAL): CARDINAL;
BEGIN
  IF n <= 1 THEN
    RETURN 1
  ELSE
    RETURN n * Factorial(n - 1)
  END
END Factorial;

(* Fibonacci: each value is the sum of the two before it *)
PROCEDURE Fib(n: CARDINAL): CARDINAL;
BEGIN
  IF n < 2 THEN
    RETURN n
  ELSE
    RETURN Fib(n - 1) + Fib(n - 2)
  END
END Fib;

VAR
  i: CARDINAL;

BEGIN
  WriteString("5! = ");
  WriteCard(Factorial(5), 1);
  WriteLn;

  WriteString("Fibonacci: ");
  FOR i := 0 TO 9 DO
    WriteCard(Fib(i), 1);
    WriteString(" ")
  END;
  WriteLn
END Recursion.
