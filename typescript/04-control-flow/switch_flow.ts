type Direction = "north" | "south" | "east" | "west";

function move(direction: Direction): [number, number] {
    switch (direction) {
        case "north":
            return [0, 1];
        case "south":
            return [0, -1];
        case "east":
            return [1, 0];
        case "west":
            return [-1, 0];
        default:
            // TypeScript knows this is unreachable for a valid Direction
            return [0, 0];
    }
}

const moves: Direction[] = ["north", "east", "south", "west"];

for (const dir of moves) {
    const [dx, dy] = move(dir);
    console.log(`${dir} => dx=${dx}, dy=${dy}`);
}
