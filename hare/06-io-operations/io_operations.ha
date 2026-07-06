use fmt;
use os;

export fn main() void = {
	// println adds a trailing newline; print does not
	fmt::println("Formatted output in Hare")!;
	fmt::print("A")!;
	fmt::print("B")!;
	fmt::println("C")!;

	// printfln substitutes {} placeholders in order
	const language = "Hare";
	const year = 2022;
	fmt::printfln("{} first appeared in {}", language, year)!;

	// Placeholders can reference arguments by index and reuse them
	fmt::printfln("{0} {0} {1}", "echo", "!")!;

	// Base-conversion modifiers after a colon
	fmt::printfln("255 in hex is {:x}", 255)!;
	fmt::printfln("255 in octal is {:o}", 255)!;
	fmt::printfln("255 in binary is {:b}", 255)!;

	// fprintln targets a specific handle — here, standard error
	fmt::fprintln(os::stderr, "This message goes to stderr")!;
};
