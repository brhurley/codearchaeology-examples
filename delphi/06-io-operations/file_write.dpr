program FileWrite;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  OutFile: TextFile;
  I: Integer;

begin
  AssignFile(OutFile, 'notes.txt');  // Associate variable with filename
  Rewrite(OutFile);                  // Create (or overwrite) the file
  try
    WriteLn(OutFile, 'Delphi I/O Notes');
    WriteLn(OutFile, '================');
    for I := 1 to 3 do
      WriteLn(OutFile, Format('Line %d', [I]));
  finally
    CloseFile(OutFile);              // Always close, even on error
  end;

  WriteLn('Wrote notes.txt');
end.
