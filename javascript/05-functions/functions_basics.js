// Function declaration - hoisted, can be called before it appears
function greet(name) {
  return `Hello, ${name}!`;
}

// Function expression - assigned to a const
const square = function (n) {
  return n * n;
};

// Arrow function - concise ES6 syntax
const cube = (n) => n * n * n;

// A function can return nothing (implicitly returns undefined)
function logSeparator() {
  console.log("----------");
}

console.log(greet("Ada"));
console.log("square(5) =", square(5));
console.log("cube(3) =", cube(3));
logSeparator();
console.log("Return of logSeparator:", logSeparator());
