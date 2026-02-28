begin
  integer count, max_size, negative;
  real pi, temperature, ratio;

  comment Assign integer values;
  count    := 42;
  max_size := 1000000;
  negative := -17;

  comment Assign real values;
  pi          := 3.14159;
  temperature := 98.6;
  ratio       := 2.71828;

  comment Output integer values;
  outstring(1, "=== Integer Variables ===\n");
  outstring(1, "count     = "); outinteger(1, count);     outstring(1, "\n");
  outstring(1, "max_size  = "); outinteger(1, max_size);  outstring(1, "\n");
  outstring(1, "negative  = "); outinteger(1, negative);  outstring(1, "\n");

  comment Output real values;
  outstring(1, "\n=== Real Variables ===\n");
  outstring(1, "pi          = "); outreal(1, pi);          outstring(1, "\n");
  outstring(1, "temperature = "); outreal(1, temperature); outstring(1, "\n");
  outstring(1, "ratio       = "); outreal(1, ratio);       outstring(1, "\n")
end
