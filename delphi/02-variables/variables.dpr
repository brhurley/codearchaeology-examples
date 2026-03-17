program Variables;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  // Integer types
  Age: Integer;
  Count: LongInt;
  SmallNum: ShortInt;
  BigNum: Int64;

  // Floating-point types
  Price: Double;
  Temperature: Single;

  // String and character types
  Name: string;
  Initial: Char;

  // Boolean type
  IsActive: Boolean;

begin
  // Integer assignments
  Age := 30;
  Count := 1000000;
  SmallNum := -42;
  BigNum := 9223372036854775807;

  // Floating-point assignments
  Price := 19.99;
  Temperature := -3.5;

  // String and character assignments
  Name := 'Delphi';
  Initial := 'D';

  // Boolean assignment
  IsActive := True;

  // Display all variables
  WriteLn('=== Integer Types ===');
  WriteLn('Age (Integer): ', Age);
  WriteLn('Count (LongInt): ', Count);
  WriteLn('SmallNum (ShortInt): ', SmallNum);
  WriteLn('BigNum (Int64): ', BigNum);

  WriteLn;
  WriteLn('=== Floating-Point Types ===');
  WriteLn('Price (Double): ', Price:0:2);
  WriteLn('Temperature (Single): ', Temperature:0:1);

  WriteLn;
  WriteLn('=== String and Character Types ===');
  WriteLn('Name (string): ', Name);
  WriteLn('Initial (Char): ', Initial);

  WriteLn;
  WriteLn('=== Boolean Type ===');
  WriteLn('IsActive (Boolean): ', IsActive);
end.
