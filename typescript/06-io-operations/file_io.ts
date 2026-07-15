import { readFile, writeFile, appendFile } from "node:fs/promises";

interface LogEntry {
    timestamp: string;
    message: string;
}

async function main(): Promise<void> {
    // writeFile creates the file, or overwrites it if it exists
    await writeFile("journal.txt", "First entry\n", "utf-8");

    // appendFile adds to the end without overwriting
    await appendFile("journal.txt", "Second entry\n", "utf-8");

    // With an encoding, readFile resolves to a string
    const contents: string = await readFile("journal.txt", "utf-8");
    console.log("Journal contents:");
    process.stdout.write(contents);

    // Structured data round-trips through JSON
    const entry: LogEntry = {
        timestamp: "2026-07-14",
        message: "Shipped the release",
    };
    await writeFile("entry.json", JSON.stringify(entry, null, 2) + "\n", "utf-8");

    const parsed: LogEntry = JSON.parse(await readFile("entry.json", "utf-8"));
    console.log(`Parsed entry: ${parsed.message} (${parsed.timestamp})`);
}

main();
