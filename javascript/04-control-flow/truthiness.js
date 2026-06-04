// Truthy/falsy values and short-circuit logic

// Falsy values: false, 0, "", null, undefined, NaN
const values = [0, "", "hello", null, 42];
for (const v of values) {
  if (v) {
    console.log(`${JSON.stringify(v)} is truthy`);
  } else {
    console.log(`${JSON.stringify(v)} is falsy`);
  }
}

// || returns the first truthy value — handy for defaults
const userName = "";
const displayName = userName || "Guest";
console.log(`Welcome, ${displayName}`);

// ?? only falls back on null or undefined, NOT on 0 or ""
const count = 0;
const fallbackOr = count || 10;      // 0 is falsy   -> 10
const fallbackNullish = count ?? 10; // 0 is defined -> 0
console.log(`OR result: ${fallbackOr}`);
console.log(`Nullish result: ${fallbackNullish}`);
