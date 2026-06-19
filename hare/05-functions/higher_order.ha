use fmt;

fn double(x: int) int = x * 2;
fn negate(x: int) int = -x;

// Accepts a pointer to any function of type fn(int) int
fn apply(f: *fn(int) int, value: int) int = {
	return f(value);
};

export fn main() void = {
	// '&' takes the address of a function
	fmt::printfln("apply(double, 21) = {}", apply(&double, 21))!;
	fmt::printfln("apply(negate, 7) = {}", apply(&negate, 7))!;
};
