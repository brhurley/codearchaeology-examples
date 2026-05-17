int a = 17;
int b = 5;

Console.WriteLine($"a + b = {a + b}");
Console.WriteLine($"a - b = {a - b}");
Console.WriteLine($"a * b = {a * b}");
Console.WriteLine($"a / b = {a / b}        (integer division truncates)");
Console.WriteLine($"a % b = {a % b}        (remainder)");

double x = 17.0;
double y = 5.0;
Console.WriteLine($"x / y = {x / y}  (floating-point division)");

int counter = 10;
counter += 3;
Console.WriteLine($"counter after += 3: {counter}");

counter *= 2;
Console.WriteLine($"counter after *= 2: {counter}");

int post = counter++;
int pre  = ++counter;
Console.WriteLine($"post-increment captured {post}, pre-increment captured {pre}, counter is now {counter}");
