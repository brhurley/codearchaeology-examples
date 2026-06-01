program CaseStatement;

{$APPTYPE CONSOLE}

var
  Day: Integer;
  Letter: Char;

begin
  Day := 6;

  // Match single values, a list (6, 7), and an else fallback
  case Day of
    1: WriteLn('Monday');
    2: WriteLn('Tuesday');
    3: WriteLn('Wednesday');
    4: WriteLn('Thursday');
    5: WriteLn('Friday');
    6, 7: WriteLn('Weekend');
  else
    WriteLn('Invalid day');
  end;

  Letter := 'G';

  // case also works on characters, including ranges
  case Letter of
    'a'..'z': WriteLn('Lowercase letter');
    'A'..'Z': WriteLn('Uppercase letter');
    '0'..'9': WriteLn('Digit');
  else
    WriteLn('Other character');
  end;
end.
