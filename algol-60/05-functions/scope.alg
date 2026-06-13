begin
  comment Procedures may be nested. inner is declared inside outer
  and is visible only there. Through lexical scoping inner can read
  outer's local variable base;
  procedure outer(n);
    value n; integer n;
  begin
    integer base;

    integer procedure inner(k);
      value k; integer k;
    inner := base + k;

    base := n * 10;
    outstring(1, "with base ");
    outinteger(1, base);
    outstring(1, "inner(2) returns ");
    outinteger(1, inner(2));
    outstring(1, "\n");
    outstring(1, "inner(7) returns ");
    outinteger(1, inner(7));
    outstring(1, "\n")
  end;

  outer(5)
end
