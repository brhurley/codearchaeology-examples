**FREE
// CUSTOMER is an externally described, keyed physical file with fields:
//   CUSTID   packed(7:0)   - key
//   CUSTNAME char(30)
//   BALANCE  packed(11:2)
dcl-f customer usage(*input) keyed;

dcl-s msg char(60);

// Sequential read of every record until end of file
read customer;
dow not %eof(customer);
  msg = %char(custid) + ' ' + %trim(custname);
  dsply msg;
  read customer;
enddow;

// Random access by key with CHAIN
chain 1001 customer;
if %found(customer);
  msg = 'Found: ' + %trim(custname);
else;
  msg = 'Customer 1001 not found';
endif;
dsply msg;

*inlr = *on;
