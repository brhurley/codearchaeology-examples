begin
  Boolean is_active, is_done, result;
  integer x, y;

  is_active := true;
  is_done   := false;
  x         := 10;
  y         := 20;

  comment Boolean expressions using comparisons;
  result := x < y;

  outstring(1, "=== Boolean Variables ===\n");
  outstring(1, "is_active = "); outstring(1, if is_active then "true" else "false"); outstring(1, "\n");
  outstring(1, "is_done   = "); outstring(1, if is_done   then "true" else "false"); outstring(1, "\n");
  outstring(1, "x < y     = "); outstring(1, if result    then "true" else "false"); outstring(1, "\n");

  comment Logical operators;
  outstring(1, "\n=== Logical Operations ===\n");
  outstring(1, "true and false = ");
  outstring(1, if true and false then "true" else "false"); outstring(1, "\n");
  outstring(1, "true or false  = ");
  outstring(1, if true or false  then "true" else "false"); outstring(1, "\n");
  outstring(1, "not true       = ");
  outstring(1, if not true       then "true" else "false"); outstring(1, "\n");

  comment Integer arithmetic in context;
  outstring(1, "\n=== Integer Arithmetic ===\n");
  outstring(1, "x + y = "); outinteger(1, x + y); outstring(1, "\n");
  outstring(1, "x * y = "); outinteger(1, x * y); outstring(1, "\n");
  outstring(1, "y / x = "); outinteger(1, y / x); outstring(1, "\n");
  outstring(1, "y - x = "); outinteger(1, y - x); outstring(1, "\n");

  comment Power operator uses double star ** in MARST;
  outstring(1, "x ** 2 = "); outinteger(1, x ** 2); outstring(1, "\n")
end
