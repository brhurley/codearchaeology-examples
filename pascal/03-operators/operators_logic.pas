program OperatorsLogic;

var
    p, q: Boolean;
    m, n: Integer;
begin
    p := True;
    q := False;

    WriteLn('p and q : ', p and q);
    WriteLn('p or  q : ', p or q);
    WriteLn('not p   : ', not p);
    WriteLn('p xor q : ', p xor q);

    { Same keywords, integer operands -> bitwise }
    m := 12;   {  binary 1100 }
    n := 10;   {  binary 1010 }
    WriteLn('m and n : ', m and n);   { 1000 = 8  }
    WriteLn('m or  n : ', m or n);    { 1110 = 14 }
    WriteLn('m xor n : ', m xor n);   { 0110 = 6  }
    WriteLn('m shl 2 : ', m shl 2);   { 110000 = 48 }
    WriteLn('m shr 1 : ', m shr 1);   { 110 = 6 }
end.
