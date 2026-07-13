**FREE
// SALESRPT is an externally described printer file (defined in DDS)
// with record formats HEADING and DETAIL. The DETAIL format contains
// the output fields PRODUCT (char 20), QTY (int) and AMOUNT (packed 9,2).
dcl-f salesrpt printer oflind(*in90);

dcl-s names  char(20) dim(3);
dcl-s units  int(10)  dim(3);
dcl-s prices packed(9:2) dim(3);
dcl-s i      int(10);

names(1) = 'Widget'; units(1) = 100; prices(1) = 4.99;
names(2) = 'Gadget'; units(2) = 50;  prices(2) = 9.99;
names(3) = 'Gizmo';  units(3) = 25;  prices(3) = 14.99;

// Write the page heading
write heading;

// Write one detail line per product
for i = 1 to 3;
  // Reprint the heading if the page overflowed
  if *in90;
    write heading;
    *in90 = *off;
  endif;
  product = names(i);   // fields defined in the DETAIL DDS format
  qty     = units(i);
  amount  = prices(i);
  write detail;
endfor;

*inlr = *on;
