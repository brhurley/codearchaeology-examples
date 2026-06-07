program CaseDemo;

var
    day: Integer;
    letter: Char;

begin
    day := 6;

    case day of
        1, 2, 3, 4, 5: WriteLn('Weekday');
        6, 7:          WriteLn('Weekend');
    else
        WriteLn('Invalid day');
    end;

    letter := 'E';

    { Character ranges as case labels }
    case letter of
        'A'..'Z': WriteLn(letter, ' is an uppercase letter');
        'a'..'z': WriteLn(letter, ' is a lowercase letter');
        '0'..'9': WriteLn(letter, ' is a digit');
    else
        WriteLn(letter, ' is a symbol');
    end;
end.
