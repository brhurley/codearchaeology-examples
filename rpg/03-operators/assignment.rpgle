**FREE
dcl-s total int(10) inz(100);

total += 50;   // total = total + 50
dsply ('After += 50: ' + %char(total));

total -= 30;   // total = total - 30
dsply ('After -= 30: ' + %char(total));

total *= 2;    // total = total * 2
dsply ('After *= 2:  ' + %char(total));

total /= 4;    // total = total / 4
dsply ('After /= 4:  ' + %char(total));

*inlr = *on;
