program Recursion;

{ n! = n * (n-1)! with a base case of 1 }
function Factorial(n: Integer): Int64;
begin
    if n <= 1 then
        Factorial := 1
    else
        Factorial := n * Factorial(n - 1);
end;

{ Each Fibonacci number is the sum of the previous two }
function Fibonacci(n: Integer): Integer;
begin
    if n < 2 then
        Fibonacci := n
    else
        Fibonacci := Fibonacci(n - 1) + Fibonacci(n - 2);
end;

var
    i: Integer;

begin
    WriteLn('Factorials:');
    for i := 1 to 10 do
        WriteLn(i, '! = ', Factorial(i));

    WriteLn;
    Write('Fibonacci sequence: ');
    for i := 0 to 10 do
        Write(Fibonacci(i), ' ');
    WriteLn;
end.
