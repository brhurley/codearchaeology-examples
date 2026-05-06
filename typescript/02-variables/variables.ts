// --- let vs const ---
// `let` declares a mutable binding; `const` declares an immutable one.
let counter: number = 0;
counter = counter + 1;

const greeting: string = "Hello, TypeScript!";
// greeting = "nope"; // would error: Cannot assign to 'greeting' because it is a constant.

// --- Type inference ---
// TypeScript infers the type from the initializer; the annotation is optional.
let pi = 3.14159;          // inferred as number
let language = "TypeScript"; // inferred as string
let active = true;          // inferred as boolean

// --- Primitive types ---
const wholeNumber: number = 42;
const decimalNumber: number = 3.14;
const big: bigint = 9007199254740993n; // arbitrary-precision integer
const name: string = "Ada";
const isReady: boolean = true;
const nothing: null = null;
const notSet: undefined = undefined;
const tag: symbol = Symbol("id");

// --- Template literals (strings with embedded expressions) ---
const summary: string = `${name} is ${wholeNumber} (ready: ${isReady})`;

// --- Arrays and tuples ---
const scores: number[] = [95, 87, 76];
const pair: [string, number] = ["age", 30]; // fixed-length tuple

// Output everything
console.log(`counter   = ${counter}`);
console.log(`greeting  = ${greeting}`);
console.log(`pi        = ${pi}`);
console.log(`language  = ${language}`);
console.log(`active    = ${active}`);
console.log(`big       = ${big}`);
console.log(`summary   = ${summary}`);
console.log(`scores    = [${scores.join(", ")}]`);
console.log(`pair      = [${pair[0]}, ${pair[1]}]`);
console.log(`nothing   = ${nothing}`);
console.log(`notSet    = ${notSet}`);
console.log(`tag type  = ${typeof tag}`);
