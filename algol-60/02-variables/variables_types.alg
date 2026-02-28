begin
  integer a, b, int_result;
  real x, y, real_result;

  a := 7;
  b := 2;
  x := 7.0;
  y := 2.0;

  comment Integer division truncates;
  int_result := a / b;

  comment Real division gives fractional result;
  real_result := x / y;

  outstring(1, "=== Type Behavior ===\n");
  outstring(1, "a        = "); outinteger(1, a);           outstring(1, " (integer)\n");
  outstring(1, "x        = "); outreal(1, x);              outstring(1, " (real)\n");

  outstring(1, "\n=== Division Results ===\n");
  outstring(1, "7 / 2 (integer) = "); outinteger(1, int_result);  outstring(1, "\n");
  outstring(1, "7.0 / 2.0 (real) = "); outreal(1, real_result);   outstring(1, "\n");

  comment entier() converts real to integer (floor function);
  real_result := 3.75;
  outstring(1, "\n=== entier() Function ===\n");
  outstring(1, "entier(3.75) = "); outinteger(1, entier(real_result)); outstring(1, "\n");
  outstring(1, "entier(-3.75) = "); outinteger(1, entier(-real_result)); outstring(1, "\n");

  comment Integer value used in real context - automatically widened;
  real_result := a;
  outstring(1, "\n=== Widening ===\n");
  outstring(1, "integer a = "); outinteger(1, a); outstring(1, "\n");
  outstring(1, "as real   = "); outreal(1, real_result); outstring(1, "\n")
end
