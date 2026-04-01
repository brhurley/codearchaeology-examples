// --- const: for values that won't be reassigned ---
const PI = 3.14159;
const APP_NAME = "CodeArchaeology";
const LANGUAGES = ["JavaScript", "Python", "Rust"];

console.log("=== const declarations ===");
console.log("PI:", PI);
console.log("APP_NAME:", APP_NAME);
console.log("LANGUAGES:", LANGUAGES);

// const objects and arrays can still be mutated
LANGUAGES.push("Go");
console.log("After push:", LANGUAGES);

// --- let: for values that will change ---
console.log("\n=== let declarations ===");
let counter = 0;
console.log("counter:", counter);
counter = counter + 1;
console.log("counter after increment:", counter);

let message;
console.log("uninitialized let:", message);
message = "now assigned";
console.log("after assignment:", message);

// --- var: legacy declaration (function-scoped) ---
console.log("\n=== var vs let scoping ===");
if (true) {
  var varScoped = "I leak out of blocks";
  let letScoped = "I stay in this block";
}
console.log("var from block:", varScoped);
// console.log(letScoped); // Would throw ReferenceError

// --- var hoisting ---
console.log("hoisted var:", hoisted);
var hoisted = "defined later";
console.log("after assignment:", hoisted);
