// Synchronous file I/O with the built-in fs module
const fs = require('node:fs');

// Write a file (creates it or overwrites existing content)
const lines = ['Fortran - 1957', 'Lisp - 1958', 'COBOL - 1959'];
fs.writeFileSync('languages.txt', lines.join('\n') + '\n');
console.log('File written: languages.txt');

// Append a line without erasing the file
fs.appendFileSync('languages.txt', 'JavaScript - 1995\n');
console.log('Appended one line');

// Read the entire file back as a UTF-8 string
const content = fs.readFileSync('languages.txt', 'utf8');
console.log('--- File contents ---');
process.stdout.write(content);

// Split the text into individual lines
console.log('--- Line by line ---');
content.trimEnd().split('\n').forEach((line, i) => {
  console.log(`${i + 1}: ${line}`);
});

// Check whether a file exists
console.log('Exists:', fs.existsSync('languages.txt'));
