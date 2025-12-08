function greet(name) {
    return `Hello, ${name}!`;
}
console.log(greet("World"));
console.log(greet(42));  // No error, but probably a bug!
