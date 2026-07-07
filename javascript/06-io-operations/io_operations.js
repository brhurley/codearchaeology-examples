// Console output methods in Node.js

// Basic output to stdout
console.log("Standard output line");

// Multiple arguments are joined with spaces
console.log("Sum:", 2 + 3, "Done");

// printf-style format specifiers: %s string, %d integer, %f float
console.log("Name: %s, Age: %d, Score: %f", "Ada", 36, 99.5);

// Template literals interpolate expressions with ${...}
const lang = "JavaScript";
console.log(`Learning ${lang} is fun!`);

// Write without an automatic trailing newline
process.stdout.write("No newline here... ");
process.stdout.write("continued on same line\n");

// console.error writes to stderr, not stdout
console.error("This message goes to stderr");

// Objects are pretty-printed automatically
const user = { name: "Grace", role: "admin" };
console.log(user);
