begin
  integer result1, result2, result3;
  Boolean t;

  comment 2 + 3 * 4 parses as 2 + (3 * 4) = 14, not (2 + 3) * 4 = 20;
  result1 := 2 + 3 * 4;

  comment Parentheses force a different grouping;
  result2 := (2 + 3) * 4;

  comment ** binds tighter than unary minus: -2 ** 2 is -(2 ** 2) = -4;
  result3 := -2 ** 2;

  outstring(1, "2 + 3 * 4   = "); outinteger(1, result1); outstring(1, "\n");
  outstring(1, "(2+3) * 4   = "); outinteger(1, result2); outstring(1, "\n");
  outstring(1, "-2 ** 2     = "); outinteger(1, result3); outstring(1, "\n");

  comment Assignment with :=  not =;
  comment Multiple targets are allowed: a := b := expr;
  begin
    integer a, b;
    a := b := 99;
    outstring(1, "a, b after a := b := 99 -> ");
    outinteger(1, a); outstring(1, ", "); outinteger(1, b); outstring(1, "\n")
  end;

  comment Boolean precedence: and binds tighter than or;
  t := true or false and false;
  outstring(1, "true or false and false = ");
  if t then outstring(1, "true") else outstring(1, "false");
  outstring(1, "\n")
end
