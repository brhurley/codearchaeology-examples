use fmt;
use strconv;

// A function that may return an error
fn parse_double(s: str) (int | strconv::error) = {
	const n = strconv::stoi(s)?;  // ? propagates error if parsing fails
	return n * 2;
};

export fn main() void = {
	// '!' asserts that no error occurs — aborts on failure
	const doubled = parse_double("21")!;
	fmt::printfln("doubled = {}", doubled)!;

	// Pointer operators: '&' takes address, '*' dereferences
	let value: int = 100;
	const ptr: *int = &value;
	fmt::printfln("value    = {}", value)!;
	fmt::printfln("*ptr     = {}", *ptr)!;

	// Modify through the pointer
	*ptr = 250;
	fmt::printfln("value    = {} (after *ptr = 250)", value)!;

	// Operator precedence: arithmetic binds tighter than comparison,
	// comparison binds tighter than logical
	const a = 2;
	const b = 3;
	const c = 4;
	const expr = a + b * c > 10 && a < b;
	fmt::printfln("2 + 3 * 4 > 10 && 2 < 3 = {}", expr)!;
};
