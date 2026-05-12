begin
  integer m, n;
  Boolean p, q, r;

  m := 7;
  n := 12;

  comment Relational operators produce Boolean values;
  p := m < n;              comment true;
  q := m = n;              comment false  (note: = is equality, not assignment);
  r := m >= 7;             comment true;

  outstring(1, "m < n  : "); if p then outstring(1, "true") else outstring(1, "false");
  outstring(1, "\n");
  outstring(1, "m = n  : "); if q then outstring(1, "true") else outstring(1, "false");
  outstring(1, "\n");
  outstring(1, "m >= 7 : "); if r then outstring(1, "true") else outstring(1, "false");
  outstring(1, "\n");

  comment Logical operators: not, and, or, impl (implies), eqv (equivalent);
  outstring(1, "p and r       : ");
  if p and r then outstring(1, "true") else outstring(1, "false");
  outstring(1, "\n");

  outstring(1, "q or  r       : ");
  if q or  r then outstring(1, "true") else outstring(1, "false");
  outstring(1, "\n");

  outstring(1, "not q         : ");
  if not q   then outstring(1, "true") else outstring(1, "false");
  outstring(1, "\n");

  comment p impl q is equivalent to (not p) or q;
  outstring(1, "p impl q      : ");
  if p impl q then outstring(1, "true") else outstring(1, "false");
  outstring(1, "\n");

  comment p eqv q is true when p and q have the same Boolean value;
  outstring(1, "p eqv r       : ");
  if p eqv r then outstring(1, "true") else outstring(1, "false");
  outstring(1, "\n")
end
