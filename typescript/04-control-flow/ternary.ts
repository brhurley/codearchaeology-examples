function statusLabel(active: boolean): string {
    return active ? "online" : "offline";
}

console.log(statusLabel(true));
console.log(statusLabel(false));

// Nullish coalescing: use the right side only when the left is null or undefined
function greet(name: string | null): string {
    const safeName = name ?? "guest";
    return `Welcome, ${safeName}!`;
}

console.log(greet("Ada"));
console.log(greet(null));
