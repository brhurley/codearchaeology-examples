// Functions in TypeScript

// 1. Basic declaration: typed parameters and a typed return value
function add(a: number, b: number): number {
    return a + b;
}

// 2. Optional (age?) and default (role) parameters
function createUser(name: string, role: string = "member", age?: number): string {
    const agePart = age !== undefined ? `, age ${age}` : "";
    return `${name} (${role}${agePart})`;
}

// 3. Rest parameters collect any number of arguments into number[]
function sum(...values: number[]): number {
    return values.reduce((total, n) => total + n, 0);
}

// 4. Arrow function annotated with an explicit function type
const multiply: (a: number, b: number) => number = (a, b) => a * b;

// 5. Recursion: factorial calls itself until the base case
function factorial(n: number): number {
    if (n <= 1) return 1;
    return n * factorial(n - 1);
}

// 6. Higher-order function: fn is itself a function value
function applyTwice(value: number, fn: (x: number) => number): number {
    return fn(fn(value));
}

// 7. Generic function: T is inferred from the argument
function firstElement<T>(items: T[]): T | undefined {
    return items[0];
}

console.log(`add(2, 3) = ${add(2, 3)}`);
console.log(createUser("Ada"));
console.log(createUser("Linus", "admin", 35));
console.log(`sum(1, 2, 3, 4) = ${sum(1, 2, 3, 4)}`);
console.log(`multiply(4, 5) = ${multiply(4, 5)}`);
console.log(`factorial(5) = ${factorial(5)}`);
console.log(`applyTwice(3, double) = ${applyTwice(3, (x) => x * 2)}`);
console.log(`firstElement(['a', 'b']) = ${firstElement(["a", "b"])}`);
