import { readFile } from "node:fs/promises";

async function main(): Promise<void> {
    try {
        const data: string = await readFile("missing.txt", "utf-8");
        console.log(data);
    } catch (err: unknown) {
        // Narrow from unknown before accessing any properties
        if (err instanceof Error && "code" in err && err.code === "ENOENT") {
            console.log("File not found: missing.txt");
        } else {
            throw err;
        }
    }
}

main();
