use fmt;

// Module-global mutable binding - shared across all functions
let count: int = 0;

// Compile-time constant
def MAX: int = 100;

fn increment() void = {
	// Reads and modifies the global binding
	count += 1;
};

fn describe() void = {
	// Local binding - only visible inside this function
	const label = "current count";
	fmt::printfln("{}: {} (max {})", label, count, MAX)!;
};

export fn main() void = {
	increment();
	increment();
	increment();
	describe();
};
