// makeCounter returns a closure that captures its own 'count' variable.
// Each returned counter keeps its own independent state.
int Function() makeCounter() {
  int count = 0;
  return () {
    count++;
    return count;
  };
}

void main() {
  var counterA = makeCounter();
  var counterB = makeCounter();

  print('A: ${counterA()}');  // 1
  print('A: ${counterA()}');  // 2
  print('A: ${counterA()}');  // 3
  print('B: ${counterB()}');  // 1 - independent state

  // Demonstrate local scope: 'secret' is only visible inside main
  var secret = 42;
  void reveal() => print('The secret is $secret');
  reveal();
}
