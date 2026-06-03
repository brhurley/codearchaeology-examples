use fmt;

export fn main() void = {
	const a = 12, b = 27;

	// 'if' is an expression - it evaluates to a value
	const max = if (a > b) a else b;
	const min = if (a < b) a else b;

	fmt::printfln("max = {}, min = {}", max, min)!;

	// Hare has no ternary operator; expression-style if replaces it
	const parity = if (a % 2 == 0) "even" else "odd";
	fmt::printfln("{} is {}", a, parity)!;
};
