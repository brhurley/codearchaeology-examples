begin
  comment A typed procedure returns a value by assigning to its own
  name. square and cube are integer-valued functions;
  integer procedure square(n);
    value n; integer n;
  square := n * n;

  integer procedure cube(n);
    value n; integer n;
  cube := n * n * n;

  comment A real-valued function. Listing a, b in the value part
  means they are passed by value (copied);
  real procedure average(a, b);
    value a, b; real a, b;
  average := (a + b) / 2;

  comment A proper procedure performs an action but returns no value;
  procedure showpower(base);
    value base; integer base;
  begin
    outstring(1, "base ");
    outinteger(1, base);
    outstring(1, "squares to ");
    outinteger(1, square(base));
    outstring(1, "and cubes to ");
    outinteger(1, cube(base));
    outstring(1, "\n")
  end;

  showpower(2);
  showpower(5);
  outstring(1, "average of 10.0 and 7.0 is ");
  outreal(1, average(10.0, 7.0));
  outstring(1, "\n")
end
