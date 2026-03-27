use fmt;

// A type alias for a tagged union
type result = (i64 | str | void);

export fn main() void = {
	// Tagged unions - a value can be one of several types
	let value: (int | str) = 42;
	fmt::printfln("Value: {}", value as int)!;

	value = "now a string";
	fmt::printfln("Value: {}", value as str)!;

	// Nullable types - pointers are non-null by default
	let x: int = 10;
	let ptr: *int = &x;
	fmt::printfln("Pointer value: {}", *ptr)!;

	// Nullable pointer requires explicit opt-in
	let maybe: nullable *int = null;
	fmt::println("Nullable pointer created")!;

	maybe = &x;
	match (maybe) {
	case null =>
		fmt::println("No value")!;
	case let p: *int =>
		fmt::printfln("Has value: {}", *p)!;
	};

	// Using tagged unions for results
	const res: result = 42i64;
	match (res) {
	case let n: i64 =>
		fmt::printfln("Got number: {}", n)!;
	case let s: str =>
		fmt::printfln("Got string: {}", s)!;
	case void =>
		fmt::println("Got nothing")!;
	};
};
