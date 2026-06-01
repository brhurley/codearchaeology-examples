program Conditionals;

{$APPTYPE CONSOLE}

var
  Score: Integer;
  Grade: Char;

begin
  Score := 85;

  // Chained if / else if / else
  if Score >= 90 then
    Grade := 'A'
  else if Score >= 80 then
    Grade := 'B'
  else if Score >= 70 then
    Grade := 'C'
  else
    Grade := 'F';

  WriteLn('Score: ', Score, '  Grade: ', Grade);

  // Compound conditions need parentheses around each comparison
  if (Score >= 60) and (Score <= 100) then
    WriteLn('Passing score in valid range.');

  // A block of statements uses begin ... end
  if Grade = 'B' then
  begin
    WriteLn('Solid work.');
    WriteLn('Aim for an A next time.');
  end;
end.
