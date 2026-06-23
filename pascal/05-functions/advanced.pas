program Advanced;

{$mode objfpc}{$H+}

{ A default parameter value is used when the caller omits the argument }
function Power(base: Integer; exponent: Integer = 2): Int64;
var
    i: Integer;
begin
    Result := 1;
    for i := 1 to exponent do
        Result := Result * base;
end;

{ A function type describes the signature of a routine }
type
    IntFunc = function(x: Integer): Integer;

function Double(x: Integer): Integer;
begin
    Result := x * 2;
end;

function Negate(x: Integer): Integer;
begin
    Result := -x;
end;

{ A higher-order procedure: it accepts a function as a parameter }
procedure ApplyAndShow(f: IntFunc; value: Integer);
begin
    WriteLn('Result: ', f(value));
end;

begin
    WriteLn('5 squared (default exponent): ', Power(5));
    WriteLn('2 to the 8th: ', Power(2, 8));

    ApplyAndShow(@Double, 21);
    ApplyAndShow(@Negate, 7);
end.
