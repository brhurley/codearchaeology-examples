begin
  comment ininteger reads an integer from the standard channel (1),
  skipping any leading spaces or newlines. We read two integers and
  report a few results computed from them;
  integer a, b;

  outstring(1, "Reading two integers from standard input...\n");
  ininteger(1, a);
  ininteger(1, b);

  outstring(1, "a       = "); outinteger(1, a);      outstring(1, "\n");
  outstring(1, "b       = "); outinteger(1, b);      outstring(1, "\n");
  outstring(1, "a + b   = "); outinteger(1, a + b);  outstring(1, "\n");
  outstring(1, "a * b   = "); outinteger(1, a * b);  outstring(1, "\n")
end
