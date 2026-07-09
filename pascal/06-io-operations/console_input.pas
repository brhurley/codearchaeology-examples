program ConsoleInput;

var
    userName: string;
    age: Integer;

begin
    Write('Enter your name: ');
    ReadLn(userName);

    Write('Enter your age: ');
    ReadLn(age);

    WriteLn('Hello, ', userName, '!');
    WriteLn('Next year you will be ', age + 1, ' years old.');
end.
