use fmt;

export fn main() void = {
	// continue: skip even numbers
	fmt::println("Odd numbers under 10:")!;
	for (let i = 0; i < 10; i += 1) {
		if (i % 2 == 0) {
			continue;
		};
		fmt::printfln("  {}", i)!;
	};

	// break with a label to exit nested loops at once
	fmt::println("First pair where i * j > 6:")!;
	for :outer (let i = 1; i <= 3; i += 1) {
		for (let j = 1; j <= 3; j += 1) {
			if (i * j > 6) {
				fmt::printfln("  i = {}, j = {}", i, j)!;
				break :outer;
			};
		};
	};
};
