program FileIO;

var
    outFile, inFile: TextFile;
    line: string;
    lineNum: Integer;

begin
    { Open notes.txt for writing (creates or overwrites) }
    AssignFile(outFile, 'notes.txt');
    Rewrite(outFile);
    WriteLn(outFile, 'First line');
    WriteLn(outFile, 'Second line');
    WriteLn(outFile, 'Third line');
    CloseFile(outFile);
    WriteLn('Wrote 3 lines to notes.txt');

    { Reopen the same file for reading }
    AssignFile(inFile, 'notes.txt');
    Reset(inFile);
    lineNum := 0;
    while not Eof(inFile) do
    begin
        ReadLn(inFile, line);
        Inc(lineNum);
        WriteLn('Line ', lineNum, ': ', line);
    end;
    CloseFile(inFile);
end.
