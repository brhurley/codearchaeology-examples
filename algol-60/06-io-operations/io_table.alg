begin
  comment A formatted table assembled from the output procedures. Each
  row prints a Celsius value and its Fahrenheit equivalent. Recall that
  outinteger and outreal print their number followed by a space;
  integer c;
  real f;

  outstring(1, "Celsius  Fahrenheit\n");
  outstring(1, "-------  ----------\n");
  for c := 0 step 10 until 40 do
  begin
    f := c * 9.0 / 5.0 + 32.0;
    outstring(1, "  ");
    outinteger(1, c);
    outstring(1, "    ");
    outreal(1, f);
    outstring(1, "\n")
  end
end
