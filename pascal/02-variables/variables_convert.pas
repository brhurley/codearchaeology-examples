program TypeConversions;

var
    intVal: Integer;
    floatVal: Real;
    strVal: String;
    charVal: Char;
    boolVal: Boolean;
    code: Integer;

begin
    WriteLn('=== Numeric Conversions ===');

    { Integer to Real - implicit widening is allowed }
    intVal := 42;
    floatVal := intVal;
    WriteLn('Integer to Real: ', intVal, ' -> ', floatVal:0:1);

    { Real to Integer - must use Trunc or Round }
    floatVal := 3.7;
    WriteLn('Trunc(3.7): ', Trunc(floatVal));
    WriteLn('Round(3.7): ', Round(floatVal));

    floatVal := 3.2;
    WriteLn('Trunc(3.2): ', Trunc(floatVal));
    WriteLn('Round(3.2): ', Round(floatVal));

    WriteLn;
    WriteLn('=== String Conversions ===');

    { Integer to String }
    intVal := 255;
    Str(intVal, strVal);
    WriteLn('Integer to String: ', intVal, ' -> "', strVal, '"');

    { String to Integer }
    strVal := '123';
    Val(strVal, intVal, code);
    if code = 0 then
        WriteLn('String to Integer: "', strVal, '" -> ', intVal)
    else
        WriteLn('Conversion error at position: ', code);

    { Float to String with formatting }
    floatVal := 3.14159;
    Str(floatVal:0:2, strVal);
    WriteLn('Float to String: ', floatVal:0:5, ' -> "', strVal, '"');

    WriteLn;
    WriteLn('=== Character Conversions ===');

    { Char to Integer (ASCII value) }
    charVal := 'Z';
    WriteLn('Ord(''Z''): ', Ord(charVal));

    { Integer to Char }
    intVal := 97;
    charVal := Chr(intVal);
    WriteLn('Chr(97): ', charVal);

    WriteLn;
    WriteLn('=== Boolean Conversions ===');
    boolVal := True;
    WriteLn('Ord(True): ', Ord(boolVal));
    WriteLn('Ord(False): ', Ord(False));

    { Integer to Boolean }
    intVal := 0;
    boolVal := Boolean(intVal);
    WriteLn('Boolean(0): ', boolVal);
    intVal := 1;
    boolVal := Boolean(intVal);
    WriteLn('Boolean(1): ', boolVal);
end.
