program ConsoleOutput;

{$APPTYPE CONSOLE}

uses
  SysUtils;  // Provides the Format function

var
  Quantity: Integer;
  Price: Double;

begin
  // Write does NOT add a newline; WriteLn does
  Write('Loading');
  Write('...');
  WriteLn(' done!');

  Quantity := 3;
  Price := 4.99;

  // Format provides printf-style substitution
  WriteLn(Format('Items: %d', [Quantity]));
  WriteLn(Format('Price: $%.2f', [Price]));
  WriteLn(Format('Total: $%.2f', [Quantity * Price]));

  // Field width and alignment: %-10s left-justifies, %5d right-justifies
  WriteLn(Format('%-10s|%5d', ['Left', 42]));
end.
