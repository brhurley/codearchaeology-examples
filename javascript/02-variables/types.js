// --- Number: 64-bit floating point (IEEE 754) ---
console.log("=== Numbers ===");
const integer = 42;
const float = 3.14;
const negative = -17;
const scientific = 2.998e8;
const hex = 0xff;
const binary = 0b1010;
const octal = 0o777;

console.log("integer:", integer, "| type:", typeof integer);
console.log("float:", float, "| type:", typeof float);
console.log("scientific:", scientific);
console.log("hex:", hex, "binary:", binary, "octal:", octal);

// Special numeric values
console.log("Infinity:", 1 / 0);
console.log("-Infinity:", -1 / 0);
console.log("NaN:", 0 / 0);
console.log("NaN === NaN:", NaN === NaN);
console.log("Number.isNaN(NaN):", Number.isNaN(NaN));

// --- BigInt: arbitrary-precision integers ---
console.log("\n=== BigInt ===");
const big = 9007199254740993n;
console.log("BigInt:", big, "| type:", typeof big);

// --- String ---
console.log("\n=== Strings ===");
const single = 'single quotes';
const double = "double quotes";
const template = `template literal: 2 + 2 = ${2 + 2}`;
const multiline = `line one
line two`;

console.log(single);
console.log(double);
console.log(template);
console.log("multiline:", multiline);
console.log("length:", single.length);
console.log("charAt(0):", single.charAt(0));
console.log("includes('single'):", single.includes("single"));

// --- Boolean ---
console.log("\n=== Booleans ===");
const isActive = true;
const isDeleted = false;
console.log("isActive:", isActive, "| type:", typeof isActive);

// --- undefined and null ---
console.log("\n=== undefined and null ===");
let notAssigned;
const explicitNull = null;
console.log("notAssigned:", notAssigned, "| type:", typeof notAssigned);
console.log("explicitNull:", explicitNull, "| type:", typeof explicitNull);
console.log("null == undefined:", null == undefined);
console.log("null === undefined:", null === undefined);

// --- Symbol: unique identifiers ---
console.log("\n=== Symbol ===");
const sym1 = Symbol("description");
const sym2 = Symbol("description");
console.log("sym1:", sym1.toString(), "| type:", typeof sym1);
console.log("sym1 === sym2:", sym1 === sym2);
