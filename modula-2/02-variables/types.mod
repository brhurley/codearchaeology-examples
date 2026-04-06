MODULE Types;

FROM StrIO IMPORT WriteString, WriteLn;
FROM NumberIO IMPORT WriteInt, WriteCard;

CONST
  Pi          = 3.14159;
  MaxStudents = 30;
  AppName     = "Modula-2 Demo";

TYPE
  Day = (Monday, Tuesday, Wednesday, Thursday,
         Friday, Saturday, Sunday);
  Weekday = [Monday..Friday];
  Score = [0..100];
  Initial = ['A'..'Z'];

VAR
  today: Day;
  grade: Score;
  firstChar: Initial;
  i: CARDINAL;

BEGIN
  (* Constants *)
  WriteString("Application: ");
  WriteString(AppName);
  WriteLn;
  WriteString("Max students: ");
  WriteCard(MaxStudents, 0);
  WriteLn;

  (* Enumeration type *)
  today := Wednesday;
  WriteString("Day number: ");
  WriteCard(ORD(today), 0);
  WriteString(" (Wednesday)");
  WriteLn;

  (* Subrange type *)
  grade := 95;
  WriteString("Grade: ");
  WriteCard(grade, 0);
  WriteLn;

  (* Character subrange *)
  firstChar := 'W';
  WriteString("Initial: ");
  WriteString("W");
  WriteLn;

  (* Enumeration ordering with ORD *)
  WriteString("Monday=");
  WriteCard(ORD(Monday), 0);
  WriteString(" Friday=");
  WriteCard(ORD(Friday), 0);
  WriteString(" Sunday=");
  WriteCard(ORD(Sunday), 0);
  WriteLn
END Types.
