// A function with a typed parameter and a typed return value
int square(int n) {
  return n * n;
}

// A void function performs an action but returns nothing
void printBanner(String text) {
  print('=== $text ===');
}

void main() {
  printBanner('Functions');
  print('square(5) = ${square(5)}');
  print('square(square(3)) = ${square(square(3))}');
}
