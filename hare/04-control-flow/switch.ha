use fmt;

export fn main() void = {
	const day = 3;

	switch (day) {
	case 1 =>
		fmt::println("Monday")!;
	case 2 =>
		fmt::println("Tuesday")!;
	case 3 =>
		fmt::println("Wednesday")!;
	case 4, 5 =>
		fmt::println("Almost the weekend")!;
	case =>
		fmt::println("Weekend")!;
	};
};
