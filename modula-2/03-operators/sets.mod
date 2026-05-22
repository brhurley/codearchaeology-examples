MODULE sets;

FROM StrIO IMPORT WriteString, WriteLn;

TYPE
  DigitSet = SET OF [0..9];

VAR
  evens, primes, both, either, diff: DigitSet;

PROCEDURE WriteSet(s: DigitSet);
VAR i: CARDINAL;
BEGIN
  WriteString("{ ");
  FOR i := 0 TO 9 DO
    IF i IN s THEN
      IF i = 0 THEN WriteString("0 ")
      ELSIF i = 1 THEN WriteString("1 ")
      ELSIF i = 2 THEN WriteString("2 ")
      ELSIF i = 3 THEN WriteString("3 ")
      ELSIF i = 4 THEN WriteString("4 ")
      ELSIF i = 5 THEN WriteString("5 ")
      ELSIF i = 6 THEN WriteString("6 ")
      ELSIF i = 7 THEN WriteString("7 ")
      ELSIF i = 8 THEN WriteString("8 ")
      ELSE             WriteString("9 ")
      END
    END
  END;
  WriteString("}")
END WriteSet;

BEGIN
  evens  := DigitSet{0, 2, 4, 6, 8};
  primes := DigitSet{2, 3, 5, 7};

  both   := evens * primes;   (* intersection *)
  either := evens + primes;   (* union        *)
  diff   := evens - primes;   (* difference   *)

  WriteString("evens     = "); WriteSet(evens);  WriteLn;
  WriteString("primes    = "); WriteSet(primes); WriteLn;
  WriteString("union     = "); WriteSet(either); WriteLn;
  WriteString("intersect = "); WriteSet(both);   WriteLn;
  WriteString("evens-prm = "); WriteSet(diff);   WriteLn;

  IF 4 IN evens THEN WriteString("4 IN evens"); WriteLn END;
  IF NOT (4 IN primes) THEN WriteString("4 NOT IN primes"); WriteLn END
END sets.
