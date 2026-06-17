program Recursion;

{$APPTYPE CONSOLE}

uses
  SysUtils;  // for IntToStr and Trim

// Factorial: N! = N * (N-1) * ... * 1
function Factorial(N: Integer): Int64;
begin
  if N <= 1 then
    Result := 1
  else
    Result := N * Factorial(N - 1);
end;

// Fibonacci: each number is the sum of the previous two.
function Fib(N: Integer): Integer;
begin
  if N < 2 then
    Result := N
  else
    Result := Fib(N - 1) + Fib(N - 2);
end;

var
  I: Integer;
  Sequence: string;
begin
  for I := 1 to 6 do
    WriteLn(I, '! = ', Factorial(I));

  Sequence := '';
  for I := 0 to 9 do
    Sequence := Sequence + IntToStr(Fib(I)) + ' ';
  WriteLn('Fibonacci: ', Trim(Sequence));
end.
