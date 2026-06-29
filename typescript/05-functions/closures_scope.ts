// Variable scope and closures in TypeScript

const greeting = "Hello"; // module-level: visible to every function in this file

function makeCounter(): () => number {
    let count = 0; // local to makeCounter, captured by the returned closure
    return function (): number {
        count += 1;
        return count;
    };
}

function scopeDemo(): void {
    const local = "inside scopeDemo"; // local: not visible outside this function
    console.log(`${greeting} from ${local}`);
}

const counter = makeCounter();
console.log(`counter() = ${counter()}`);
console.log(`counter() = ${counter()}`);
console.log(`counter() = ${counter()}`);
scopeDemo();
