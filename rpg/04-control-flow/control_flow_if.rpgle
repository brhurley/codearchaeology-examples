**FREE
dcl-s temp int(10) inz(72);
dcl-s msg varchar(50);

if temp > 80;
  msg = 'It is hot';
elseif temp >= 60;
  msg = 'It is comfortable';
else;
  msg = 'It is cold';
endif;

dsply msg;

*inlr = *on;
