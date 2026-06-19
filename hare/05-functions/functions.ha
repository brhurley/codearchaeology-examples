use fmt;

// Block body: uses an explicit return statement
fn add(a: int, b: int) int = {
	return a + b;
};

// Expression body: no braces and no return needed
fn square(n: int) int = n * n;

// A function that returns nothing uses the 'void' type
fn greet(name: str) void = {
	fmt::printfln("Hello, {}!", name)!;
};

export fn main() void = {
	const sum = add(3, 4);
	const sq = square(5);

	fmt::printfln("add(3, 4) = {}", sum)!;
	fmt::printfln("square(5) = {}", sq)!;
	greet("Hare");
};
