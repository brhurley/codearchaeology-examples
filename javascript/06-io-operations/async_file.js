// Asynchronous, non-blocking file I/O with promises
const fs = require('node:fs/promises');

async function main() {
  try {
    // Write asynchronously - execution pauses here without blocking
    await fs.writeFile('report.txt', 'Async I/O complete\n');

    // Read the file back asynchronously
    const data = await fs.readFile('report.txt', 'utf8');
    process.stdout.write(data);

    // Attempt to read a file that does not exist
    await fs.readFile('missing.txt', 'utf8');
  } catch (err) {
    // Failed I/O throws; err.code identifies the failure
    console.error(`I/O error: ${err.code}`);
  }
}

main();
