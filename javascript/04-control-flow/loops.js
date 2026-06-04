// Loops in JavaScript

// Classic C-style for loop with a counter
for (let i = 1; i <= 3; i++) {
  console.log(`for loop: ${i}`);
}

// while loop: checks the condition before each iteration
let count = 3;
while (count > 0) {
  console.log(`while count: ${count}`);
  count--;
}

// do...while: runs the body once before checking the condition
let n = 0;
do {
  console.log(`do...while: ${n}`);
  n++;
} while (n < 2);

// for...of iterates over the VALUES of an array
const colors = ["red", "green", "blue"];
for (const color of colors) {
  console.log(`color: ${color}`);
}

// for...in iterates over the KEYS of an object
const person = { name: "Ada", role: "engineer" };
for (const key in person) {
  console.log(`${key} = ${person[key]}`);
}
