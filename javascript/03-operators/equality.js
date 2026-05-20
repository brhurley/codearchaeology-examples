// Loose equality (==) performs type coercion
console.log('"5" == 5:', "5" == 5);           // true  — string coerced to number
console.log('0 == false:', 0 == false);       // true  — boolean coerced to number
console.log('null == undefined:', null == undefined); // true — special case
console.log('"" == 0:', "" == 0);             // true  — empty string -> 0

// Strict equality (===) checks type AND value
console.log('"5" === 5:', "5" === 5);         // false
console.log('0 === false:', 0 === false);     // false
console.log('null === undefined:', null === undefined); // false

// Coercion in arithmetic context
console.log('"3" + 4:', "3" + 4);             // "34"  — + with string concatenates
console.log('"3" - 4:', "3" - 4);             // -1    — - forces numeric coercion
console.log('"3" * "4":', "3" * "4");         // 12    — both coerced to numbers

// Nullish coalescing (??) vs logical OR (||)
const count = 0;
console.log("count || 10:", count || 10);     // 10  — 0 is falsy
console.log("count ?? 10:", count ?? 10);     // 0   — only null/undefined trigger ??
