// Classic C-style for loop
let sum = 0;
for (let i = 1; i <= 5; i++) {
    sum += i;
}
console.log(`Sum 1..5 = ${sum}`);

// while loop with break
let countdown = 3;
while (true) {
    console.log(`T-minus ${countdown}`);
    countdown--;
    if (countdown < 0) {
        break;
    }
}

// for...of with continue to skip odd numbers
const numbers: number[] = [1, 2, 3, 4, 5, 6];
const evens: number[] = [];
for (const n of numbers) {
    if (n % 2 !== 0) {
        continue;
    }
    evens.push(n);
}
console.log(`Evens: ${evens.join(", ")}`);
