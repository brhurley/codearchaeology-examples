const language: string = "TypeScript";
const year: number = 2012;

// console.log writes to stdout and appends a newline
console.log("Standard output with console.log");

// Template literals interpolate typed values
console.log(`${language} first appeared in ${year}`);

// process.stdout.write does NOT append a newline
process.stdout.write("Building a line ");
process.stdout.write("piece by piece\n");

// printf-style format specifiers: %s for strings, %d for numbers
console.log("Name: %s, Year: %d", language, year);

// console.error writes to stderr, keeping errors separate from data
console.error("Warnings and errors go to stderr");
