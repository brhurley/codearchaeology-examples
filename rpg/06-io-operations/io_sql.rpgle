**FREE
ctl-opt dftactgrp(*no);

dcl-s custName varchar(30);
dcl-s custBal  packed(11:2);
dcl-s totalBal packed(13:2);
dcl-s msg      char(52);

// Single-row read with SELECT INTO
exec sql
  SELECT custname, balance INTO :custName, :custBal
  FROM customer
  WHERE custid = 1001;

if sqlcode = 0;
  msg = %trim(custName) + ': ' + %trim(%editc(custBal:'1'));
  dsply msg;
elseif sqlcode = 100;
  dsply 'Customer 1001 not found';
endif;

// Aggregate query
exec sql
  SELECT SUM(balance) INTO :totalBal
  FROM customer;
msg = 'Total balance: ' + %trim(%editc(totalBal:'1'));
dsply msg;

// Read many rows with a cursor
exec sql DECLARE c1 CURSOR FOR
  SELECT custname FROM customer ORDER BY custname;
exec sql OPEN c1;
exec sql FETCH c1 INTO :custName;
dow sqlcode = 0;
  dsply custName;
  exec sql FETCH c1 INTO :custName;
enddow;
exec sql CLOSE c1;

// Write a new row with INSERT
exec sql
  INSERT INTO customer (custid, custname, balance)
  VALUES (2001, 'New Customer', 0);
if sqlcode = 0;
  dsply 'Row inserted';
endif;

*inlr = *on;
