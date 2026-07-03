program ConsoleInput;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  Name: string;
  Age: Integer;

begin
  Write('Enter your name: ');
  ReadLn(Name);          // Reads an entire line into a string

  Write('Enter your age: ');
  ReadLn(Age);           // Reads and converts directly to Integer

  WriteLn(Format('Hello, %s!', [Name]));
  WriteLn(Format('Next year you will be %d.', [Age + 1]));
end.
