program FileErrors;

var
    inFile: TextFile;
    line: string;

begin
    AssignFile(inFile, 'missing.txt');

    {$I-}          { turn off automatic I/O error checking }
    Reset(inFile);
    {$I+}          { turn it back on for the rest of the program }

    if IOResult <> 0 then
    begin
        WriteLn('Error: could not open missing.txt');
        Halt(1);
    end;

    ReadLn(inFile, line);
    WriteLn('First line: ', line);
    CloseFile(inFile);
end.
