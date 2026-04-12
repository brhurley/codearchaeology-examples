program Constants;

const
    { True constants - value determined at compile time }
    PI = 3.14159265358979;
    MAX_STUDENTS = 30;
    GREETING = 'Hello';
    TAX_RATE = 0.08;
    IS_DEBUG = False;

    { Typed constants - type is explicitly specified }
    MIN_AGE: Integer = 18;
    APP_NAME: String = 'MyApp';

var
    radius, area, circumference: Real;
    totalWithTax: Real;
    i: Integer;

begin
    WriteLn('=== Using Constants ===');
    WriteLn('Greeting: ', GREETING);
    WriteLn('Max students: ', MAX_STUDENTS);
    WriteLn('Tax rate: ', TAX_RATE:0:2);
    WriteLn('Debug mode: ', IS_DEBUG);

    WriteLn;
    WriteLn('=== Circle Calculations ===');
    radius := 5.0;
    area := PI * radius * radius;
    circumference := 2 * PI * radius;

    WriteLn('Radius: ', radius:0:1);
    WriteLn('Area: ', area:0:2);
    WriteLn('Circumference: ', circumference:0:2);

    WriteLn;
    WriteLn('=== Tax Calculation ===');
    totalWithTax := 100.0 * (1 + TAX_RATE);
    WriteLn('Price: $100.00');
    WriteLn('With tax: $', totalWithTax:0:2);

    WriteLn;
    WriteLn('=== Typed Constants ===');
    WriteLn('Min age: ', MIN_AGE);
    WriteLn('App name: ', APP_NAME);

    WriteLn;
    WriteLn('=== Enumerated and Subrange Types ===');

    { Demonstrating Ord with characters and booleans }
    WriteLn('Ord(''A''): ', Ord('A'));
    WriteLn('Ord(True): ', Ord(True));
    WriteLn('Chr(65): ', Chr(65));
end.
