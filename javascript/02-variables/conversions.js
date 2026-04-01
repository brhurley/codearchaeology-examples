// --- Implicit coercion (type coercion) ---
console.log("=== Implicit Coercion ===");
console.log('"5" + 3:', "5" + 3);           // "53" (string concatenation)
console.log('"5" - 3:', "5" - 3);           // 2 (numeric subtraction)
console.log('"5" * 2:', "5" * 2);           // 10
console.log('true + 1:', true + 1);         // 2
console.log('false + 1:', false + 1);       // 1
console.log('"" == false:', "" == false);    // true
console.log('0 == false:', 0 == false);      // true

// --- Explicit conversions ---
console.log("\n=== Explicit Conversions ===");

// To number
console.log('Number("42"):', Number("42"));
console.log('Number("3.14"):', Number("3.14"));
console.log('Number(""):', Number(""));
console.log('Number("hello"):', Number("hello"));
console.log('parseInt("42px"):', parseInt("42px"));
console.log('parseFloat("3.14em"):', parseFloat("3.14em"));

// To string
console.log('String(42):', String(42));
console.log('String(true):', String(true));
console.log('String(null):', String(null));
console.log('String(undefined):', String(undefined));
console.log('(42).toString():', (42).toString());
console.log('(255).toString(16):', (255).toString(16));

// To boolean — falsy values (everything else is truthy)
console.log("\n=== Truthy and Falsy ===");
console.log("Falsy values (all convert to false):");
console.log("  Boolean(false):", Boolean(false));
console.log("  Boolean(0):", Boolean(0));
console.log("  Boolean(''):", Boolean(""));
console.log("  Boolean(null):", Boolean(null));
console.log("  Boolean(undefined):", Boolean(undefined));
console.log("  Boolean(NaN):", Boolean(NaN));

console.log("Truthy surprises:");
console.log('  Boolean("0"):', Boolean("0"));       // true — non-empty string!
console.log('  Boolean("false"):', Boolean("false")); // true — non-empty string!
console.log("  Boolean([]):", Boolean([]));           // true — empty array!
console.log("  Boolean({}):", Boolean({}));           // true — empty object!

// --- typeof operator ---
console.log("\n=== typeof ===");
console.log('typeof 42:', typeof 42);
console.log('typeof "hi":', typeof "hi");
console.log('typeof true:', typeof true);
console.log('typeof undefined:', typeof undefined);
console.log('typeof null:', typeof null);           // "object" — a famous bug!
console.log('typeof Symbol():', typeof Symbol());
console.log('typeof 42n:', typeof 42n);
console.log('typeof {}:', typeof {});
console.log('typeof []:', typeof []);
console.log('Array.isArray([]):', Array.isArray([]));
