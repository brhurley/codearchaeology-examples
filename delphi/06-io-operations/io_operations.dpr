program IoOperations;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  DataFile: TextFile;
  Line: string;

begin
  // Attempt to open a file that does not exist
  AssignFile(DataFile, 'missing.txt');
  try
    Reset(DataFile);          // Raises EInOutError because the file is missing
    try
      ReadLn(DataFile, Line);
      WriteLn('Read: ', Line);
    finally
      CloseFile(DataFile);
    end;
  except
    on E: EInOutError do
      WriteLn('I/O error: could not open missing.txt');
  end;

  WriteLn('Program continues after handling the error.');
end.
