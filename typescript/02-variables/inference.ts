// `id` can be a string OR a number — a union type.
let id: string | number = "abc-123";
console.log(`id (string form) = ${id}, length = ${id.length}`);

id = 42; // legal: number is part of the union
console.log(`id (number form) = ${id}, doubled = ${id * 2}`);

// --- Type narrowing with typeof ---
function describe(value: string | number): string {
    if (typeof value === "string") {
        // Inside this branch, TypeScript knows `value` is a string.
        return `string of length ${value.length}`;
    }
    // Outside the branch, only `number` remains.
    return `number with value ${value.toFixed(2)}`;
}

console.log(describe("hello"));
console.log(describe(7.5));

// --- Literal types ---
// A variable can be typed to a specific value, not just a category.
let direction: "north" | "south" | "east" | "west" = "north";
direction = "east";
// direction = "up"; // would error: not assignable to that union of literals.
console.log(`direction = ${direction}`);

// --- `const` infers literal types automatically ---
const mode = "production"; // inferred as the literal type "production", not string
console.log(`mode = ${mode}`);

// --- Type aliases keep things readable ---
type Status = "pending" | "active" | "done";
const current: Status = "active";
console.log(`status = ${current}`);
