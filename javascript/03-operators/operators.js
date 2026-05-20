// Arithmetic operators
const a = 17;
const b = 5;

console.log("a + b =", a + b);       // addition
console.log("a - b =", a - b);       // subtraction
console.log("a * b =", a * b);       // multiplication
console.log("a / b =", a / b);       // division (always float)
console.log("a % b =", a % b);       // remainder
console.log("a ** b =", a ** b);     // exponentiation (ES2016)

// Integer-style division requires Math.trunc or Math.floor
console.log("Math.trunc(a / b) =", Math.trunc(a / b));

// Unary operators
let n = 10;
console.log("-n =", -n);
console.log("++n =", ++n);           // pre-increment
console.log("n-- =", n--);           // post-decrement (returns 11, then n=10)
console.log("n =", n);

// Comparison operators
console.log("a > b:", a > b);
console.log("a === 17:", a === 17);  // strict equality (no coercion)
console.log("a !== b:", a !== b);

// Logical operators (short-circuit)
const isAdult = true;
const hasTicket = false;
console.log("isAdult && hasTicket:", isAdult && hasTicket);
console.log("isAdult || hasTicket:", isAdult || hasTicket);
console.log("!isAdult:", !isAdult);
