// Conditional statements in JavaScript

const temperature = 72;

// Basic if / else if / else
if (temperature < 32) {
  console.log("Freezing");
} else if (temperature < 60) {
  console.log("Cold");
} else if (temperature < 80) {
  console.log("Comfortable");
} else {
  console.log("Hot");
}

// Ternary (conditional) expression returns a value
const status = temperature >= 60 ? "warm" : "cool";
console.log(`It feels ${status}`);

// Chained ternary for a simple letter grade
const score = 85;
const grade =
  score >= 90 ? "A" :
  score >= 80 ? "B" :
  score >= 70 ? "C" : "F";
console.log(`Grade: ${grade}`);
