// Function overloads: several typed signatures, one implementation

function describe(value: string): string;
function describe(value: number): string;
function describe(value: boolean): string;
function describe(value: string | number | boolean): string {
    return `${typeof value}: ${value}`;
}

console.log(describe("typescript"));
console.log(describe(42));
console.log(describe(true));
