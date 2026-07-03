import 'dart:io';

void main() {
  stdout.write('What is your name? ');
  String? name = stdin.readLineSync();

  stdout.write('How old are you? ');
  String? ageInput = stdin.readLineSync();

  // int.parse converts text to a number; fall back to '0' if input was null
  int age = int.parse(ageInput ?? '0');

  // The ?? operator supplies a default when name is null
  print('Hello, ${name ?? 'stranger'}!');
  print('Next year you will be ${age + 1}.');
}
