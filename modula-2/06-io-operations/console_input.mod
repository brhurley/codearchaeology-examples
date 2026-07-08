MODULE ConsoleInput;

FROM StrIO IMPORT WriteString, WriteLn, ReadString;
FROM NumberIO IMPORT WriteCard, ReadCard;

VAR
  name: ARRAY [0..49] OF CHAR;
  age: CARDINAL;

BEGIN
  WriteString("Enter your name: ");
  ReadString(name);

  WriteString("Enter your age: ");
  ReadCard(age);

  WriteLn;
  WriteString("Hello, ");
  WriteString(name);
  WriteString("!");
  WriteLn;
  WriteString("Next year you will be ");
  WriteCard(age + 1, 0);
  WriteLn
END ConsoleInput.
