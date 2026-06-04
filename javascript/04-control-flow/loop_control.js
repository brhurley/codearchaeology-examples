// Controlling loop execution

// break exits the loop entirely
for (let i = 1; i <= 10; i++) {
  if (i > 5) {
    break;
  }
  console.log(`break demo: ${i}`);
}

// continue skips to the next iteration
for (let i = 1; i <= 6; i++) {
  if (i % 2 === 0) {
    continue; // skip even numbers
  }
  console.log(`odd number: ${i}`);
}

// A label lets break target an outer loop
outer: for (let row = 1; row <= 3; row++) {
  for (let col = 1; col <= 3; col++) {
    if (row + col === 4) {
      console.log(`stopping at row ${row}, col ${col}`);
      break outer;
    }
  }
}
