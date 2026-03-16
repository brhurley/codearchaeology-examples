void main() {
  // ── Primitive Types ──────────────────────────────────────────────────────
  // Integers (arbitrary precision)
  int age = 30;
  int population = 8100000000;

  // Floating-point (64-bit double)
  double pi = 3.14159265358979;
  double temperature = -40.5;

  // Booleans
  bool isActive = true;

  // Strings (single or double quotes)
  String name = 'Dart Developer';
  String greeting = "Hello";

  print('── Primitive Types ──');
  print('int:    $age');
  print('int:    $population');
  print('double: $pi');
  print('double: $temperature');
  print('bool:   $isActive');
  print('String: $name');
  print('String: $greeting');

  // ── Type Inference with var ──────────────────────────────────────────────
  // var lets the compiler deduce the type; the variable is still statically typed
  var count = 42;                    // inferred as int
  var message = 'Hello, Dart!';     // inferred as String
  var ratio = 3.14;                  // inferred as double
  var flag = true;                   // inferred as bool

  print('\n── Type Inference with var ──');
  print('count   is ${count.runtimeType}: $count');
  print('message is ${message.runtimeType}: $message');
  print('ratio   is ${ratio.runtimeType}: $ratio');
  print('flag    is ${flag.runtimeType}: $flag');

  // var works great with complex types to reduce verbosity
  var numbers = [1, 2, 3, 4, 5];
  print('numbers is ${numbers.runtimeType} with ${numbers.length} elements');

  // ── final and const ──────────────────────────────────────────────────────
  // final: set once at runtime, cannot be reassigned
  final String appName = 'CodeArchaeology';
  final now = DateTime.now();    // runtime value — only final works here

  // const: compile-time constant — value must be known at compile time
  const double piConst = 3.14159265358979;
  const int daysInWeek = 7;
  const maxRetries = 3;          // type inferred as int

  double circumference = 2 * piConst * 5.0;

  print('\n── final and const ──');
  print('final appName:  $appName');
  print('final now:      ${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}');
  print('const piConst:  $piConst');
  print('const daysInWeek: $daysInWeek');
  print('const maxRetries: $maxRetries');
  print('Circumference of r=5 circle: ${circumference.toStringAsFixed(4)}');

  // ── Null Safety ──────────────────────────────────────────────────────────
  // By default, variables cannot be null
  // Add ? to make a type nullable
  String? nullableName;            // defaults to null
  int? optionalAge;

  print('\n── Null Safety ──');
  print('nullableName is null: ${nullableName == null}');
  print('optionalAge is null:  ${optionalAge == null}');

  // Null-aware operators
  nullableName = 'Alice';
  print('nullableName after assignment: $nullableName');
  print('nullableName length: ${nullableName.length}');   // safe — compiler knows it's assigned

  String? maybeName;
  print('maybeName?.length: ${maybeName?.length}');       // null-aware access → null
  print('maybeName ?? "default": ${maybeName ?? "default"}');  // null-coalescing

  // ── Type Conversions ─────────────────────────────────────────────────────
  // Dart does NOT do implicit numeric conversions — you must be explicit
  int intVal = 100;
  double doubleVal = intVal.toDouble();   // int → double
  int backToInt = 3.99.toInt();           // double → int (truncates)

  print('\n── Type Conversions ──');
  print('int → double: $intVal → $doubleVal');
  print('double → int (truncates): 3.99 → $backToInt');

  // String parsing
  int parsed = int.parse('42');
  double parsedDouble = double.parse('3.14');
  bool parsedBool = bool.parse('true');   // only 'true' or 'false'

  print('\nString parsing:');
  print('  int.parse("42")      = $parsed');
  print('  double.parse("3.14") = $parsedDouble');
  print('  bool.parse("true")   = $parsedBool');

  // Safe parsing with tryParse (returns null on failure)
  int? safeParse = int.tryParse('123abc');
  print('\nint.tryParse("123abc") = $safeParse');

  int? goodParse = int.tryParse('999');
  print('int.tryParse("999")    = $goodParse');

  // Type checking with is
  var value = 42;
  print('\nType checking:');
  print('  42 is int:    ${value is int}');
  print('  42 is double: ${value is double}');
  print('  42 is num:    ${value is num}');

  // String representations
  int x = 255;
  print('\nString representations of 255:');
  print('  Decimal: ${x.toString()}');
  print('  Hex:     ${x.toRadixString(16).toUpperCase()}');
  print('  Binary:  ${x.toRadixString(2)}');
}
