program OperatorsSets;

type
    DigitSet = set of 0..9;

var
    primes, evens, both: DigitSet;
    greeting, name, message: string;
begin
    primes := [2, 3, 5, 7];
    evens  := [0, 2, 4, 6, 8];

    both := primes * evens;          { intersection: just {2} }
    Write('primes * evens = [');
    if 2 in both then Write('2');
    WriteLn(']');

    WriteLn('3 in primes  : ', 3 in primes);
    WriteLn('4 in primes  : ', 4 in primes);

    { Set union and difference behave just like arithmetic }
    both := primes + evens;          { union }
    WriteLn('|primes + evens| includes 7? ', 7 in both);

    both := evens - primes;          { difference }
    WriteLn('|evens - primes| includes 2? ', 2 in both);

    { String concatenation with + }
    greeting := 'Hello, ';
    name := 'Pascal';
    message := greeting + name + '!';
    WriteLn(message);
end.
