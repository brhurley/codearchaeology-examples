begin
  comment ALGOL 60 defined no I/O of its own; these procedures come
  from the Modified Report that GNU MARST implements. Channel 1 is the
  standard console. This program shows the three core output verbs;
  integer items;
  real price, total;

  items := 3;
  price := 4.50;
  total := items * price;

  comment outstring prints text exactly as written, including any \n;
  outstring(1, "=== Order Summary ===\n");

  comment outinteger and outreal each print their number followed by a
  single space, so you normally do not add one yourself;
  outstring(1, "items = "); outinteger(1, items); outstring(1, "\n");
  outstring(1, "price = "); outreal(1, price);    outstring(1, "\n");
  outstring(1, "total = "); outreal(1, total);    outstring(1, "\n");

  comment A whole multi-line block can live in one string literal;
  outstring(1, "\nThanks for your order!\nCome again.\n")
end
