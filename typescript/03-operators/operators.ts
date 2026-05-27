const a: number = 17;
const b: number = 5;

// Arithmetic operators
console.log("Arithmetic Operators:");
console.log(`a + b = ${a + b}`);
console.log(`a - b = ${a - b}`);
console.log(`a * b = ${a * b}`);
console.log(`a / b = ${a / b}`);   // floating-point division
console.log(`a % b = ${a % b}`);   // remainder
console.log(`a ** b = ${a ** b}`); // exponentiation

// Comparison operators (use === and !== for strict checks)
console.log("\nComparison Operators:");
console.log(`a > b: ${a > b}`);
console.log(`a < b: ${a < b}`);
console.log(`a >= b: ${a >= b}`);
console.log(`a === 17: ${a === 17}`);
console.log(`a !== b: ${a !== b}`);

// Logical operators
const isLoggedIn: boolean = true;
const isAdmin: boolean = false;
console.log("\nLogical Operators:");
console.log(`AND: ${isLoggedIn && isAdmin}`);
console.log(`OR: ${isLoggedIn || isAdmin}`);
console.log(`NOT: ${!isAdmin}`);

// Assignment operators mutate a let binding
let count: number = 10;
console.log("\nAssignment Operators:");
count += 5;
console.log(`After += 5: ${count}`);
count -= 3;
console.log(`After -= 3: ${count}`);
count *= 2;
console.log(`After *= 2: ${count}`);
count **= 2;
console.log(`After **= 2: ${count}`);

// String concatenation with +
const first: string = "Type";
const second: string = "Script";
console.log("\nString Concatenation:");
console.log(`${first} + ${second} = ${first + second}`);

// Operator precedence: * binds tighter than +
console.log("\nOperator Precedence:");
console.log(`2 + 3 * 4 = ${2 + 3 * 4}`);
console.log(`(2 + 3) * 4 = ${(2 + 3) * 4}`);

// Ternary conditional operator
const age: number = 20;
const status: string = age >= 18 ? "adult" : "minor";
console.log("\nTernary:");
console.log(`Status: ${status}`);
