use fmt;

export fn main() void = {
	// C-style for loop: binding; condition; afterthought
	fmt::println("Counting up:")!;
	for (let i = 1; i <= 5; i += 1) {
		fmt::printfln("  i = {}", i)!;
	};

	// While-style: only a condition
	fmt::println("Counting down:")!;
	let n = 3;
	for (n > 0) {
		fmt::printfln("  n = {}", n)!;
		n -= 1;
	};
};
