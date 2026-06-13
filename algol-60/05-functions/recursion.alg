begin
  comment Recursion - a procedure calling itself - was a landmark
  feature of ALGOL 60. Here factorial calls factorial;
  integer procedure factorial(n);
    value n; integer n;
  if n <= 1 then
    factorial := 1
  else
    factorial := n * factorial(n - 1);

  integer i;
  for i := 1 step 1 until 6 do
  begin
    outstring(1, "factorial of ");
    outinteger(1, i);
    outstring(1, "is ");
    outinteger(1, factorial(i));
    outstring(1, "\n")
  end
end
