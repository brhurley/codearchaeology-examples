begin
  comment Call-by-name is ALGOL 60's signature parameter mechanism.
  A formal parameter that is NOT in the value part is passed by name:
  the actual argument expression is re-evaluated on every use;

  real procedure sum(i, lo, hi, term);
    value lo, hi;
    integer i, lo, hi; real term;
  begin
    real s;
    s := 0;
    for i := lo step 1 until hi do
      s := s + term;
    sum := s
  end;

  integer k;

  comment k and the expression k*k are passed by name. Each time the
  loop assigns to i (which is really k), term is recomputed;
  outstring(1, "sum of k for k=1..10 is ");
  outreal(1, sum(k, 1, 10, k));
  outstring(1, "\n");
  outstring(1, "sum of k*k for k=1..4 is ");
  outreal(1, sum(k, 1, 4, k * k));
  outstring(1, "\n")
end
