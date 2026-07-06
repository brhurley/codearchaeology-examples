use bufio;
use fmt;
use io;
use os;

export fn main() void = {
	fmt::print("Enter your name: ")!;

	// A scanner buffers reads from any handle; finish() frees its buffer
	const scan = bufio::newscanner(os::stdin);
	defer bufio::finish(&scan);

	const name = match (bufio::scan_line(&scan)) {
	case io::EOF =>
		fmt::println()!;
		return;
	case let err: io::error =>
		fmt::fatalf("Input error: {}", io::strerror(err));
	case let line: const str =>
		yield line;
	};

	fmt::printfln("Hello, {}!", name)!;
};
