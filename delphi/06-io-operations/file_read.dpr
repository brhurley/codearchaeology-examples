program FileRead;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
  InFile: TextFile;
  Line: string;
  Count: Integer;

begin
  if not FileExists('notes.txt') then
  begin
    WriteLn('notes.txt not found. Run file_write first.');
    Halt(1);
  end;

  AssignFile(InFile, 'notes.txt');
  Reset(InFile);            // Open the file for reading
  Count := 0;
  try
    while not Eof(InFile) do
    begin
      ReadLn(InFile, Line); // Read one line at a time
      Inc(Count);
      WriteLn(Format('%d: %s', [Count, Line]));
    end;
  finally
    CloseFile(InFile);
  end;

  WriteLn(Format('Read %d lines.', [Count]));
end.
