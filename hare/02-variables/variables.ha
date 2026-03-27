use fmt;

// Compile-time constant at module scope
def MAX_SCORE: int = 100;

export fn main() void = {
	// Immutable binding - cannot be reassigned
	const language = "Hare";
	const year: int = 2022;

	// Mutable binding - can be reassigned
	let score: int = 85;
	let passed: bool = true;

	fmt::printfln("Language: {}", language)!;
	fmt::printfln("First appeared: {}", year)!;
	fmt::printfln("Score: {}/{}", score, MAX_SCORE)!;
	fmt::printfln("Passed: {}", passed)!;

	// Reassigning a mutable variable
	score = 92;
	passed = score >= 90;
	fmt::printfln("Updated score: {}", score)!;
	fmt::printfln("Updated passed: {}", passed)!;
};
