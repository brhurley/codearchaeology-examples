program VariablesConvert;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  IntVal: Integer;
  FloatVal: Double;
  StrVal: string;
  BoolVal: Boolean;
  CharVal: Char;
  ByteVal: Byte;

begin
  WriteLn('=== String to Number Conversions ===');

  // String to Integer
  StrVal := '42';
  IntVal := StrToInt(StrVal);
  WriteLn('StrToInt(''42''): ', IntVal);

  // String to Float
  StrVal := '3.14';
  FloatVal := StrToFloat(StrVal);
  WriteLn('StrToFloat(''3.14''): ', FloatVal:0:2);

  WriteLn;
  WriteLn('=== Number to String Conversions ===');

  // Integer to String
  IntVal := 255;
  StrVal := IntToStr(IntVal);
  WriteLn('IntToStr(255): ', StrVal);

  // Float to String
  FloatVal := 98.6;
  StrVal := FloatToStr(FloatVal);
  WriteLn('FloatToStr(98.6): ', StrVal);

  // Formatted float to string
  StrVal := Format('%.3f', [FloatVal]);
  WriteLn('Format(''%.3f'', 98.6): ', StrVal);

  WriteLn;
  WriteLn('=== Numeric Type Conversions ===');

  // Integer to Float (implicit widening is allowed)
  IntVal := 100;
  FloatVal := IntVal;
  WriteLn('Integer 100 as Double: ', FloatVal:0:1);

  // Float to Integer (requires Trunc or Round)
  FloatVal := 7.8;
  WriteLn('Trunc(7.8): ', Trunc(FloatVal));
  WriteLn('Round(7.8): ', Round(FloatVal));

  WriteLn;
  WriteLn('=== Character and Ordinal Conversions ===');

  // Char to ordinal value
  CharVal := 'A';
  IntVal := Ord(CharVal);
  WriteLn('Ord(''A''): ', IntVal);

  // Ordinal to Char
  IntVal := 90;
  CharVal := Chr(IntVal);
  WriteLn('Chr(90): ', CharVal);

  // Integer to Byte (explicit cast)
  IntVal := 200;
  ByteVal := Byte(IntVal);
  WriteLn('Byte(200): ', ByteVal);

  WriteLn;
  WriteLn('=== Boolean Conversions ===');
  BoolVal := True;
  WriteLn('Ord(True): ', Ord(BoolVal));
  WriteLn('Ord(False): ', Ord(False));

  // Integer to Boolean
  BoolVal := Boolean(1);
  WriteLn('Boolean(1): ', BoolVal);
  BoolVal := Boolean(0);
  WriteLn('Boolean(0): ', BoolVal);
end.
