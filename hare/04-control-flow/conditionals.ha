use fmt;

export fn main() void = {
	const score = 85;

	if (score >= 90) {
		fmt::println("Grade: A")!;
	} else if (score >= 80) {
		fmt::println("Grade: B")!;
	} else if (score >= 70) {
		fmt::println("Grade: C")!;
	} else {
		fmt::println("Grade: F")!;
	};
};
