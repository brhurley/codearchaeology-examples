void main() {
  // continue: skip even numbers
  for (int i = 1; i <= 6; i++) {
    if (i % 2 == 0) continue;
    print('Odd: $i');
  }

  // break: stop at the first match
  var names = ['Ada', 'Linus', 'Grace'];
  for (var name in names) {
    if (name == 'Linus') {
      print('Found Linus, stopping');
      break;
    }
    print('Checked $name');
  }

  // Labeled break to escape a nested loop
  outer:
  for (int row = 0; row < 3; row++) {
    for (int col = 0; col < 3; col++) {
      if (row + col == 3) {
        print('Breaking outer at row=$row col=$col');
        break outer;
      }
    }
  }
}
