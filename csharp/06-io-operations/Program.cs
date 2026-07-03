// Console.Write adds no newline; Console.WriteLine ends the line
Console.Write("No newline here... ");
Console.WriteLine("but this ends the line.");

// Console.Error writes to the standard error stream (stderr)
Console.Error.WriteLine("Diagnostics go to stderr");

int count = 42;
double price = 19.99;
bool active = true;

// String interpolation ($) is the modern, readable way to build output
Console.WriteLine($"Count: {count}, Price: {price}, Active: {active}");

// Composite formatting uses numbered {0}, {1} placeholders
Console.WriteLine("Composite: {0} items at {1} each", count, price);

// Format specifiers control how values render: F2 = two decimal places
Console.WriteLine($"Two decimals: {price:F2}");
Console.WriteLine($"Three decimals: {Math.PI:F3}");

// Alignment: {value,width} right-aligns; a negative width left-aligns
Console.WriteLine($"|{"Left",-8}|{"Right",8}|");
