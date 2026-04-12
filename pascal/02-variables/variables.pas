program Variables;

var
    age: Integer;
    height: Real;
    initial: Char;
    name: String;
    isStudent: Boolean;

begin
    { Assign values to variables }
    age := 25;
    height := 5.9;
    initial := 'A';
    name := 'Alice';
    isStudent := True;

    WriteLn('Name: ', name);
    WriteLn('Age: ', age);
    WriteLn('Height: ', height:0:1);
    WriteLn('Initial: ', initial);
    WriteLn('Student: ', isStudent);

    { Multiple variables of the same type }
    WriteLn;
    WriteLn('--- Multiple declarations ---');

    { You can declare multiple vars of the same type on one line }
    { For example: x, y, z: Integer; }
    { Let us demonstrate with our existing variables }
    age := age + 1;
    WriteLn('Next year age: ', age);

    { Pascal uses := for assignment, not = }
    { The = sign is used for comparison }
    if age = 26 then
        WriteLn('Age is now 26');
end.
