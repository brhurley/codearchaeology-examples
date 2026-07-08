MODULE FileIO;

FROM StrIO IMPORT WriteString, WriteLn;
IMPORT FIO;

VAR
  f: FIO.File;
  line: ARRAY [0..79] OF CHAR;

BEGIN
  (* Write three lines to a text file *)
  f := FIO.OpenToWrite("report.txt");
  FIO.WriteString(f, "Modula-2 was created in 1978.");
  FIO.WriteLine(f);
  FIO.WriteString(f, "It introduced true modules.");
  FIO.WriteLine(f);
  FIO.WriteString(f, "gm2 is part of GCC.");
  FIO.WriteLine(f);
  FIO.Close(f);

  WriteString("Wrote 3 lines to report.txt");
  WriteLn;
  WriteLn;

  (* Read the same three lines back *)
  WriteString("Contents of report.txt:");
  WriteLn;
  f := FIO.OpenToRead("report.txt");
  FIO.ReadString(f, line);
  WriteString("  "); WriteString(line); WriteLn;
  FIO.ReadString(f, line);
  WriteString("  "); WriteString(line); WriteLn;
  FIO.ReadString(f, line);
  WriteString("  "); WriteString(line); WriteLn;
  FIO.Close(f)
END FileIO.
