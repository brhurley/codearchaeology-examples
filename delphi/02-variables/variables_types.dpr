program VariablesTypes;

{$APPTYPE CONSOLE}

uses
  SysUtils;

const
  Pi = 3.14159265358979;
  MaxRetries = 5;
  AppName = 'CodeArchaeology';
  Newline = #13#10;

type
  TColor = (Red, Green, Blue, Yellow, Cyan);
  TColorSet = set of TColor;
  TMonth = 1..12;

var
  FavoriteColor: TColor;
  PrimaryColors: TColorSet;
  CurrentMonth: TMonth;
  Area: Double;
  Radius: Double;

begin
  WriteLn('=== Constants ===');
  WriteLn('Pi: ', Pi:0:15);
  WriteLn('MaxRetries: ', MaxRetries);
  WriteLn('AppName: ', AppName);

  // Enumerated types
  FavoriteColor := Blue;
  WriteLn;
  WriteLn('=== Enumerated Types ===');
  WriteLn('FavoriteColor ordinal: ', Ord(FavoriteColor));
  WriteLn('FavoriteColor name: Blue');

  // Set types
  PrimaryColors := [Red, Green, Blue];
  WriteLn;
  WriteLn('=== Set Types ===');
  if Red in PrimaryColors then
    WriteLn('Red is a primary color');
  if Yellow in PrimaryColors then
    WriteLn('Yellow is a primary color')
  else
    WriteLn('Yellow is NOT a primary color');

  // Subrange types
  CurrentMonth := 7;
  WriteLn;
  WriteLn('=== Subrange Types ===');
  WriteLn('Current month: ', CurrentMonth);

  // Using constants in calculations
  Radius := 5.0;
  Area := Pi * Radius * Radius;
  WriteLn;
  WriteLn('=== Using Constants ===');
  WriteLn('Circle radius: ', Radius:0:1);
  WriteLn('Circle area: ', Area:0:4);
end.
