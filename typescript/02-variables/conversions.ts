// --- Explicit conversions between primitives ---
const numericString: string = "123";
const parsed: number = Number(numericString);     // 123
const parsedInt: number = parseInt("42px", 10);   // 42 (stops at non-digit)
const parsedFloat: number = parseFloat("3.14abc"); // 3.14

console.log(`Number("123")        = ${parsed}`);
console.log(`parseInt("42px", 10) = ${parsedInt}`);
console.log(`parseFloat("3.14abc")= ${parsedFloat}`);

// --- Number to string ---
const n: number = 255;
const asDecimal: string = n.toString();      // "255"
const asHex: string = n.toString(16);        // "ff"
const asFixed: string = n.toFixed(2);        // "255.00"
console.log(`${n} -> "${asDecimal}", hex "${asHex}", fixed "${asFixed}"`);

// --- Boolean conversion ---
console.log(`Boolean("")     = ${Boolean("")}`);     // false
console.log(`Boolean("text") = ${Boolean("text")}`); // true
console.log(`Boolean(0)      = ${Boolean(0)}`);      // false
console.log(`Boolean(1)      = ${Boolean(1)}`);      // true

// --- Optional values: undefined and null ---
// Under strict mode, this property might be missing.
interface User {
    name: string;
    nickname?: string; // optional
}

const u1: User = { name: "Grace" };
const u2: User = { name: "Ada", nickname: "Countess" };

function displayName(user: User): string {
    // The compiler forces us to handle the possibly-undefined case.
    return user.nickname ?? user.name; // ?? falls back when null/undefined
}

console.log(`u1 -> ${displayName(u1)}`);
console.log(`u2 -> ${displayName(u2)}`);

// --- Type assertions: telling the compiler what you know ---
// Use sparingly — assertions bypass checks rather than prove safety.
const raw: unknown = "TypeScript";
const asString = raw as string;
console.log(`asserted length = ${asString.length}`);
