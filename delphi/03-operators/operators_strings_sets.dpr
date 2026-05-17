program OperatorsStringsSets;

{$APPTYPE CONSOLE}

uses
  SysUtils;

type
  TWeekDay = (Mon, Tue, Wed, Thu, Fri, Sat, Sun);
  TDaySet  = set of TWeekDay;

var
  Greeting, Subject: string;
  Counter: Integer;
  Workdays, Weekend, AllDays: TDaySet;
begin
  // String concatenation with +
  Greeting := 'Hello';
  Subject  := 'Delphi';
  WriteLn(Greeting + ', ' + Subject + '!');

  // Compound assignment via Inc/Dec (Delphi has no +=, but these are idiomatic)
  Counter := 10;
  Inc(Counter, 5);     // Counter := Counter + 5
  Dec(Counter);        // Counter := Counter - 1
  WriteLn('Counter = ', Counter);

  // Sets: a Delphi specialty
  Workdays := [Mon, Tue, Wed, Thu, Fri];
  Weekend  := [Sat, Sun];
  AllDays  := Workdays + Weekend;     // set union

  WriteLn('Wed in Workdays  -> ', Wed in Workdays);
  WriteLn('Sat in Workdays  -> ', Sat in Workdays);
  WriteLn('Union size       = ', Ord(High(TWeekDay)) - Ord(Low(TWeekDay)) + 1);
  WriteLn('Intersection empty? ', (Workdays * Weekend) = []);
end.
