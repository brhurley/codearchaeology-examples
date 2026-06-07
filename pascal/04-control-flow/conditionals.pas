program Conditionals;

var
    score: Integer;
    grade: Char;

begin
    score := 78;

    { Simple if/else }
    if score >= 60 then
        WriteLn('Result: Pass')
    else
        WriteLn('Result: Fail');

    { Chained if/else if - note: no semicolon before else }
    if score >= 90 then
        grade := 'A'
    else if score >= 80 then
        grade := 'B'
    else if score >= 70 then
        grade := 'C'
    else
        grade := 'D';

    WriteLn('Grade: ', grade);

    { Grouping multiple statements with begin...end }
    if score >= 70 then
    begin
        WriteLn('You passed with a score of ', score);
        WriteLn('Keep up the good work.');
    end;
end.
