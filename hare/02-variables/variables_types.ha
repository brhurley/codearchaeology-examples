use fmt;

export fn main() void = {
	// Integer types
	const small: i8 = 127;
	const medium: i32 = 2_147_483_647;
	const large: i64 = 9_000_000_000;
	const unsigned: u32 = 4_000_000_000;
	const index: size = 42;

	fmt::printfln("i8 max: {}", small)!;
	fmt::printfln("i32 max: {}", medium)!;
	fmt::printfln("i64 value: {}", large)!;
	fmt::printfln("u32 value: {}", unsigned)!;
	fmt::printfln("size value: {}", index)!;

	// Floating-point types
	const pi: f64 = 3.14159265;
	const gravity: f32 = 9.81;

	fmt::printfln("pi: {}", pi)!;
	fmt::printfln("gravity: {}", gravity)!;

	// Boolean type
	const is_systems_lang = true;
	const uses_gc = false;

	fmt::printfln("Systems language: {}", is_systems_lang)!;
	fmt::printfln("Uses GC: {}", uses_gc)!;

	// String and rune types
	const greeting: str = "Hello, Hare!";
	const letter: rune = 'H';

	fmt::printfln("Greeting: {}", greeting)!;
	fmt::printfln("Letter: {}", letter)!;

	// Type casting with : operator
	const x: i32 = 10;
	const y: i64 = x: i64;
	const z: f64 = x: f64;

	fmt::printfln("i32: {}", x)!;
	fmt::printfln("as i64: {}", y)!;
	fmt::printfln("as f64: {}", z)!;
};
