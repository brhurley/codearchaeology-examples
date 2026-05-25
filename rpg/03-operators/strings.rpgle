**FREE
dcl-s firstName varchar(20) inz('Hello');
dcl-s lastName varchar(20) inz('World');
dcl-s message varchar(50);

dcl-s padded1 char(10) inz('Hello');
dcl-s padded2 char(10) inz('World');

// varchar concatenation needs no trimming
message = firstName + ', ' + lastName + '!';
dsply message;

// char fields are blank-padded, so trim before joining
dsply (%trim(padded1) + ' ' + %trim(padded2));

*inlr = *on;
