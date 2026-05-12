begin
  integer a, b, q, r, p;
  real x, y, z;

  a := 17;
  b := 5;

  comment ALGOL 60 has two different division operators;
  x := a / b;        comment real division, result is 3.4;
  q := a div b;      comment integer division, result is 3;
  r := a - (a div b) * b;  comment remainder, computed manually, result is 2;

  comment Exponentiation uses ** in MARST;
  p := 2 ** 10;      comment 1024;

  comment Mixed integer and real promotes to real;
  y := 7 + 2.5;      comment result is 9.5;
  z := -y;           comment unary minus, result is -9.5;

  outstring(1, "a / b   = "); outreal(1, x);    outstring(1, "\n");
  outstring(1, "a div b = "); outinteger(1, q); outstring(1, "\n");
  outstring(1, "a mod b = "); outinteger(1, r); outstring(1, "\n");
  outstring(1, "2 ** 10 = "); outinteger(1, p); outstring(1, "\n");
  outstring(1, "7 + 2.5 = "); outreal(1, y);    outstring(1, "\n");
  outstring(1, "-y      = "); outreal(1, z);    outstring(1, "\n")
end
