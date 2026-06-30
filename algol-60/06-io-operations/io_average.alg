begin
  comment Read a count, then that many real numbers, and report the
  average. Because we read and write the standard channel, the shell
  can redirect a file in and capture the result out - the practical
  way to do file I/O with ALGOL 60;
  integer n, i;
  real x, total;

  ininteger(1, n);
  total := 0.0;
  for i := 1 step 1 until n do
  begin
    inreal(1, x);
    total := total + x
  end;

  outstring(1, "count   = "); outinteger(1, n);       outstring(1, "\n");
  outstring(1, "total   = "); outreal(1, total);      outstring(1, "\n");
  outstring(1, "average = "); outreal(1, total / n);  outstring(1, "\n")
end
