program FormattedOutput;

var
    count: Integer;
    price: Real;
    itemName: string;

begin
    count := 42;
    price := 19.99;
    itemName := 'Widget';

    { Plain output - values are converted automatically }
    WriteLn('Product: ', itemName);
    WriteLn('Count: ', count);

    { :width right-aligns an integer in a field of that width }
    WriteLn('Count padded:', count:6);

    { :width:decimals gives fixed-point formatting for reals }
    WriteLn('Price: ', price:0:2);
    WriteLn('Price padded: ', price:10:2);

    { Booleans print as TRUE or FALSE }
    WriteLn('In stock: ', count > 0);
end.
