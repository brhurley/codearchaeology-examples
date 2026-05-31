void main() {
  // Counting for loop
  for (int i = 1; i <= 3; i++) {
    print('Count: $i');
  }

  // for-in loop over a list
  var fruits = ['apple', 'banana', 'cherry'];
  for (var fruit in fruits) {
    print('Fruit: $fruit');
  }

  // while loop
  int countdown = 3;
  while (countdown > 0) {
    print('T-minus $countdown');
    countdown--;
  }

  // do-while always runs the body at least once
  int n = 0;
  do {
    print('Runs once even though n is $n');
  } while (n > 0);
}
