int temperature = 72;

if (temperature < 32)
{
    Console.WriteLine("Freezing");
}
else if (temperature < 60)
{
    Console.WriteLine("Cold");
}
else if (temperature < 80)
{
    Console.WriteLine("Comfortable");
}
else
{
    Console.WriteLine("Hot");
}

// Combining conditions with logical operators
int hour = 14;
bool isWeekend = false;

if (hour >= 9 && hour < 17 && !isWeekend)
{
    Console.WriteLine("The office is open");
}
else
{
    Console.WriteLine("The office is closed");
}

// Ternary conditional expression: a compact if/else that produces a value
int score = 85;
string result = score >= 60 ? "Pass" : "Fail";
Console.WriteLine($"Score {score}: {result}");
