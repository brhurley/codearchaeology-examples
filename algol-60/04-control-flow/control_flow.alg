begin
  integer i, n;

  comment if-then-else: simple two-way branch;
  n := 7;
  if n > 0 then
    outstring(1, "positive")
  else
    outstring(1, "non-positive");
  outstring(1, "\n");

  comment chained else-if for classification;
  if n > 10 then
    outstring(1, "big")
  else if n > 5 then
    outstring(1, "medium")
  else
    outstring(1, "small");
  outstring(1, "\n");

  comment for loop, step-until form (counted iteration);
  outstring(1, "count:");
  for i := 1 step 1 until 5 do
    begin
      outstring(1, " ");
      outinteger(1, i)
    end;
  outstring(1, "\n");

  comment for loop counting down with negative step;
  outstring(1, "down: ");
  for i := 5 step -1 until 1 do
    begin
      outinteger(1, i);
      outstring(1, " ")
    end;
  outstring(1, "\n");

  comment for loop over an explicit value list;
  outstring(1, "powers:");
  for i := 2, 4, 8, 16 do
    begin
      outstring(1, " ");
      outinteger(1, i)
    end;
  outstring(1, "\n");

  comment for-while form acts as a while loop;
  i := 1;
  outstring(1, "while:");
  for i := i while i < 20 do
    begin
      outstring(1, " ");
      outinteger(1, i);
      i := i * 2
    end;
  outstring(1, "\n")
end
