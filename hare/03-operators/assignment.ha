use fmt;

export fn main() void = {
	let n: int = 10;

	n += 5;  fmt::printfln("after +=  5  : {}", n)!;  // 15
	n -= 3;  fmt::printfln("after -=  3  : {}", n)!;  // 12
	n *= 2;  fmt::printfln("after *=  2  : {}", n)!;  // 24
	n /= 4;  fmt::printfln("after /=  4  : {}", n)!;  // 6
	n %= 4;  fmt::printfln("after %=  4  : {}", n)!;  // 2

	let bits: u8 = 0b1100;
	bits &= 0b1010;  fmt::printfln("after &=     : {:04b}", bits)!;  // 1000
	bits |= 0b0001;  fmt::printfln("after |=     : {:04b}", bits)!;  // 1001
	bits ^= 0b1111;  fmt::printfln("after ^=     : {:04b}", bits)!;  // 0110
	bits <<= 1;      fmt::printfln("after <<=  1 : {:08b}", bits)!;  // 1100
	bits >>= 2;      fmt::printfln("after >>=  2 : {:04b}", bits)!;  // 0011
};
