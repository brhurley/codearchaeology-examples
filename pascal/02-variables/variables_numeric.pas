program NumericTypes;

var
    { Integer types }
    small: ShortInt;    { -128 to 127 }
    medium: SmallInt;   { -32768 to 32767 }
    normal: Integer;    { Platform-dependent, typically 32-bit }
    large: Int64;       { -2^63 to 2^63-1 }
    positive: Word;     { 0 to 65535 (unsigned) }
    tiny: Byte;         { 0 to 255 (unsigned) }

    { Floating-point types }
    singlePrec: Single;    { ~7 decimal digits }
    doublePrec: Double;    { ~15 decimal digits }
    realNum: Real;         { Alias, typically maps to Double in FPC }

    { Boolean }
    flag: Boolean;

begin
    WriteLn('=== Integer Types ===');
    small := 127;
    medium := 32767;
    normal := 2147483647;
    large := 9223372036854775807;
    positive := 65535;
    tiny := 255;

    WriteLn('ShortInt max: ', small);
    WriteLn('SmallInt max: ', medium);
    WriteLn('Integer max: ', normal);
    WriteLn('Int64 max: ', large);
    WriteLn('Word max: ', positive);
    WriteLn('Byte max: ', tiny);

    WriteLn;
    WriteLn('=== Floating-Point Types ===');
    singlePrec := 3.14159;
    doublePrec := 3.141592653589793;
    realNum := 2.71828;

    WriteLn('Single: ', singlePrec:0:5);
    WriteLn('Double: ', doublePrec:0:15);
    WriteLn('Real: ', realNum:0:5);

    WriteLn;
    WriteLn('=== Boolean ===');
    flag := True;
    WriteLn('Boolean value: ', flag);
    WriteLn('NOT flag: ', not flag);
    WriteLn('True AND False: ', True and False);
    WriteLn('True OR False: ', True or False);

    WriteLn;
    WriteLn('=== Type Sizes ===');
    WriteLn('SizeOf(ShortInt): ', SizeOf(ShortInt), ' byte');
    WriteLn('SizeOf(Integer): ', SizeOf(Integer), ' bytes');
    WriteLn('SizeOf(Int64): ', SizeOf(Int64), ' bytes');
    WriteLn('SizeOf(Single): ', SizeOf(Single), ' bytes');
    WriteLn('SizeOf(Double): ', SizeOf(Double), ' bytes');
end.
