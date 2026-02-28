begin
  integer n, i, sum;
  real average;
  integer array scores[1:5];

  comment Initialize array elements;
  n        := 5;
  scores[1] := 85;
  scores[2] := 92;
  scores[3] := 78;
  scores[4] := 95;
  scores[5] := 88;

  comment Calculate the sum;
  sum := 0;
  for i := 1 step 1 until n do
    sum := sum + scores[i];

  comment Calculate average - promote sum to real before dividing;
  average := (sum + 0.0) / n;

  outstring(1, "=== Array Example ===\n");
  outstring(1, "Scores: ");
  for i := 1 step 1 until n do
  begin
    outinteger(1, scores[i]);
    if i < n then outstring(1, ", ")
  end;
  outstring(1, "\n");

  outstring(1, "Sum     = "); outinteger(1, sum);     outstring(1, "\n");
  outstring(1, "Average = "); outreal(1, average);    outstring(1, "\n")
end
