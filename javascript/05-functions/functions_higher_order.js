const numbers = [1, 2, 3, 4, 5, 6];

// map: transform every element
const doubled = numbers.map((n) => n * 2);

// filter: keep elements that pass a test
const evens = numbers.filter((n) => n % 2 === 0);

// reduce: collapse a list into a single value
const total = numbers.reduce((acc, n) => acc + n, 0);

// A function that returns a function (a "factory")
function multiplier(factor) {
  return (n) => n * factor;
}

const triple = multiplier(3);

console.log("doubled:", doubled);
console.log("evens:", evens);
console.log("total:", total);
console.log("triple(7) =", triple(7));
