// Nullish coalescing (??): fall back ONLY when the left side is null/undefined
const providedName: string | null = null;
const displayName: string = providedName ?? "Anonymous";
console.log("Nullish Coalescing:");
console.log(`Name: ${displayName}`);

// Contrast ?? with || — || also rejects 0, "", and false
const score: number = 0;
console.log(`With ||: ${score || 10}`); // 0 is falsy, so we get 10
console.log(`With ??: ${score ?? 10}`); // 0 is not nullish, so we keep 0

// Optional chaining (?.): safely read nested properties
interface User {
    profile?: {
        email?: string;
    };
}

const user: User = {};
const email: string = user.profile?.email ?? "no email";
console.log("\nOptional Chaining:");
console.log(`Email: ${email}`);

// Logical assignment: ??= assigns only if the target is null/undefined
const config: { theme?: string } = {};
config.theme ??= "dark";
console.log("\nLogical Assignment:");
console.log(`Theme: ${config.theme}`);
