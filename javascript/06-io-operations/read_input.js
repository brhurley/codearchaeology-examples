// Reading a line from standard input
const readline = require('node:readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

rl.question("What is your name? ", (name) => {
  console.log(`Hello, ${name}! Welcome to JavaScript I/O.`);
  rl.close();
});
