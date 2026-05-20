// Compound assignment
let score = 10;
score += 5;   console.log("after +=:", score);   // 15
score -= 3;   console.log("after -=:", score);   // 12
score *= 2;   console.log("after *=:", score);   // 24
score /= 4;   console.log("after /=:", score);   // 6
score **= 2;  console.log("after **=:", score);  // 36

// Logical assignment (ES2021)
let cached = null;
cached ??= "default";   // assign only if null/undefined
console.log("cached:", cached);

// String concatenation with + and template literals
const name = "Ada";
const year = 1843;
const oldStyle = "In " + year + ", " + name + " wrote the first algorithm.";
const modern   = `In ${year}, ${name} wrote the first algorithm.`;
console.log(oldStyle);
console.log(modern);

// Ternary (conditional) operator
const age = 17;
const status = age >= 18 ? "adult" : "minor";
console.log("status:", status);

// Spread operator (...) in arrays
const head = [1, 2];
const tail = [3, 4, 5];
const combined = [...head, ...tail];
console.log("combined:", combined);

// Optional chaining (?.) — short-circuits on null/undefined
const user = { profile: { name: "Grace" } };
console.log("user?.profile?.name:", user?.profile?.name);
console.log("user?.address?.city:", user?.address?.city);

// Operator precedence: ** binds tighter than *, * tighter than +
console.log("2 + 3 * 4 ** 2 =", 2 + 3 * 4 ** 2);  // 2 + 3*16 = 50
