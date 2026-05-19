use fmt;

export fn main() void = {
	const t: bool = true;
	const f: bool = false;

	// Logical operators (bool only, short-circuiting)
	fmt::printfln("t && f = {}", t && f)!;
	fmt::printfln("t || f = {}", t || f)!;
	fmt::printfln("!t     = {}", !t)!;

	// Bitwise operators on integers
	const x: u8 = 0b1100;
	const y: u8 = 0b1010;

	fmt::printfln("x & y  = {:04b}", x & y)!;   // AND
	fmt::printfln("x | y  = {:04b}", x | y)!;   // OR
	fmt::printfln("x ^ y  = {:04b}", x ^ y)!;   // XOR
	fmt::printfln("~x     = {:08b}", ~x)!;      // NOT (complement)
	fmt::printfln("x << 2 = {:08b}", x << 2)!;  // left shift
	fmt::printfln("x >> 1 = {:04b}", x >> 1)!;  // right shift
};
