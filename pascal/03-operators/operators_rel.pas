program OperatorsRel;

var
    a, b: Integer;
begin
    a := 10;
    b := 20;

    WriteLn('a =  b : ', a =  b);   { equality }
    WriteLn('a <> b : ', a <> b);   { inequality }
    WriteLn('a <  b : ', a <  b);
    WriteLn('a <= b : ', a <= b);
    WriteLn('a >  b : ', a >  b);
    WriteLn('a >= b : ', a >= b);

    { Strings compare lexicographically }
    WriteLn('''apple'' < ''banana'' : ', 'apple' < 'banana');
    WriteLn('''cat''   = ''cat''    : ', 'cat' = 'cat');
end.
