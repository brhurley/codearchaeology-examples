import * as readline from "node:readline/promises";
import { stdin, stdout } from "node:process";

async function main(): Promise<void> {
    const rl = readline.createInterface({ input: stdin, output: stdout });

    const name: string = await rl.question("What is your name? ");
    const answer: string = await rl.question("How many files will you create? ");
    rl.close();

    // Input always arrives as a string; converting it is our job
    const count: number = parseInt(answer, 10);

    if (Number.isNaN(count)) {
        console.log(`Hello, ${name}! That wasn't a number, but welcome anyway.`);
    } else {
        console.log(`Hello, ${name}! Preparing ${count} file(s).`);
    }
}

main();
