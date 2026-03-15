// ── Primitive Types ──────────────────────────────────────────────────────────
// Integers
int age = 30;
long population = 8_100_000_000L;   // underscores improve readability
short smallNum = 32000;
byte byteVal = 255;

// Floating-point
double pi = 3.14159265358979;
float approxPi = 3.14159f;          // f suffix required for float literals
decimal price = 19.99m;             // m suffix for decimal; use for money

// Boolean
bool isActive = true;

// Characters and strings
char grade = 'A';                   // single quotes for char
string name = "C# Developer";       // double quotes for string

Console.WriteLine("── Primitive Types ──");
Console.WriteLine($"int:     {age}");
Console.WriteLine($"long:    {population}");
Console.WriteLine($"short:   {smallNum}");
Console.WriteLine($"byte:    {byteVal}");
Console.WriteLine($"double:  {pi}");
Console.WriteLine($"float:   {approxPi}");
Console.WriteLine($"decimal: {price}");
Console.WriteLine($"bool:    {isActive}");
Console.WriteLine($"char:    {grade}");
Console.WriteLine($"string:  {name}");

// ── Type Inference with var ───────────────────────────────────────────────────
// var lets the compiler deduce the type; the variable is still statically typed
var count = 42;                    // inferred as int
var message = "Hello, C#!";       // inferred as string
var ratio = 3.14;                  // inferred as double
var flag = true;                   // inferred as bool

Console.WriteLine("\n── Type Inference with var ──");
Console.WriteLine($"count   is {count.GetType().Name}: {count}");
Console.WriteLine($"message is {message.GetType().Name}: {message}");
Console.WriteLine($"ratio   is {ratio.GetType().Name}: {ratio}");
Console.WriteLine($"flag    is {flag.GetType().Name}: {flag}");

// var works great with complex types to reduce verbosity
var numbers = new List<int> { 1, 2, 3, 4, 5 };
Console.WriteLine($"numbers is {numbers.GetType().Name} with {numbers.Count} elements");

// ── Constants and Nullable Types ─────────────────────────────────────────────
// const: value must be known at compile time
const double Pi = 3.14159265358979;
const int DaysInWeek = 7;
const string AppName = "CodeArchaeology";

double circumference = 2 * Pi * 5.0;
Console.WriteLine("\n── Constants ──");
Console.WriteLine($"Pi          = {Pi}");
Console.WriteLine($"DaysInWeek  = {DaysInWeek}");
Console.WriteLine($"AppName     = {AppName}");
Console.WriteLine($"Circumference of r=5 circle: {circumference:F4}");

// Nullable value types: add ? to allow null for value types
int? optionalAge = null;
Console.WriteLine($"\noptionalAge is null: {optionalAge == null}");
optionalAge = 25;
Console.WriteLine($"optionalAge after assignment: {optionalAge}");

// Null-coalescing operator: return left if not null, else right
int definiteAge = optionalAge ?? 0;
Console.WriteLine($"definiteAge (using ??): {definiteAge}");

// ── Type Conversions ─────────────────────────────────────────────────────────
// Implicit conversions (widening)
int intVal = 100;
long longVal = intVal;           // int → long: always safe
double doubleVal = intVal;       // int → double: always safe

Console.WriteLine("\n── Type Conversions ──");
Console.WriteLine("Implicit conversions:");
Console.WriteLine($"  int    → long:   {longVal}");
Console.WriteLine($"  int    → double: {doubleVal}");

// Explicit casting (narrowing)
double piApprox = 3.99;
int truncated = (int)piApprox;   // fractional part is discarded, not rounded

Console.WriteLine("\nExplicit cast (truncates, does not round):");
Console.WriteLine($"  (int)3.99 = {truncated}");

// Convert class: parses strings and converts between types
string numberText = "42";
int parsed = Convert.ToInt32(numberText);
double parsedDouble = Convert.ToDouble("3.14");
bool parsedBool = Convert.ToBoolean(1);   // 0 = false, non-zero = true

Console.WriteLine("\nConvert class:");
Console.WriteLine($"  Convert.ToInt32(\"42\")      = {parsed}");
Console.WriteLine($"  Convert.ToDouble(\"3.14\")   = {parsedDouble}");
Console.WriteLine($"  Convert.ToBoolean(1)       = {parsedBool}");

// int.Parse / int.TryParse
bool success = int.TryParse("123abc", out int result);
Console.WriteLine($"\nint.TryParse(\"123abc\") succeeded: {success}");

success = int.TryParse("999", out result);
Console.WriteLine($"int.TryParse(\"999\")    succeeded: {success}, value: {result}");

// String representations
int x = 255;
Console.WriteLine($"\nString representations of 255:");
Console.WriteLine($"  Decimal: {x.ToString()}");
Console.WriteLine($"  Hex:     {x:X}");
Console.WriteLine($"  Binary:  {Convert.ToString(x, 2)}");
