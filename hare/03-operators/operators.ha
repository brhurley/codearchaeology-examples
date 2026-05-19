use fmt;

export fn main() void = {
	const a: int = 17;
	const b: int = 5;

	// Arithmetic operators
	fmt::printfln("a + b  = {}", a + b)!;   // addition
	fmt::printfln("a - b  = {}", a - b)!;   // subtraction
	fmt::printfln("a * b  = {}", a * b)!;   // multiplication
	fmt::printfln("a / b  = {}", a / b)!;   // integer division
	fmt::printfln("a % b  = {}", a % b)!;   // modulo
	fmt::printfln("-a     = {}", -a)!;      // unary minus

	// Comparison operators return bool
	fmt::printfln("a == b : {}", a == b)!;
	fmt::printfln("a != b : {}", a != b)!;
	fmt::printfln("a <  b : {}", a < b)!;
	fmt::printfln("a >  b : {}", a > b)!;
	fmt::printfln("a <= b : {}", a <= b)!;
	fmt::printfln("a >= b : {}", a >= b)!;

	// Explicit cast required for mixed-type arithmetic
	const f: f64 = 3.0;
	const result: f64 = a as f64 / f;
	fmt::printfln("a as f64 / f = {}", result)!;
};
