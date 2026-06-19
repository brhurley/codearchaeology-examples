use fmt;

fn factorial(n: u64) u64 = {
	if (n <= 1) {
		return 1;
	};
	return n * factorial(n - 1);
};

fn fib(n: u64) u64 = {
	if (n < 2) {
		return n;
	};
	return fib(n - 1) + fib(n - 2);
};

export fn main() void = {
	fmt::printfln("factorial(5) = {}", factorial(5))!;
	fmt::printfln("fib(10) = {}", fib(10))!;
};
