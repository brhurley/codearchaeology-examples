// A function with two typed parameters and an int return type
int Add(int a, int b)
{
    return a + b;
}

// Expression-bodied function: concise syntax for a single expression
int Square(int n) => n * n;

// A 'void' function returns nothing - it just performs an action
void PrintBanner(string text)
{
    Console.WriteLine($"=== {text} ===");
}

PrintBanner("Functions");
Console.WriteLine($"Add(3, 4) = {Add(3, 4)}");
Console.WriteLine($"Square(5) = {Square(5)}");
