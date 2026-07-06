use bufio;
use fmt;
use io;
use os;

export fn main() void = {
	// Create a small file to read back
	const out = os::create("data.txt", 0o644)!;
	fmt::fprintln(out, "apple")!;
	fmt::fprintln(out, "banana")!;
	fmt::fprintln(out, "cherry")!;
	io::close(out)!;

	// os::open opens an existing file read-only by default
	const file = os::open("data.txt")!;
	defer io::close(file)!;

	const scan = bufio::newscanner(file);
	defer bufio::finish(&scan);

	let lineno = 1;
	for (true) {
		const line = match (bufio::scan_line(&scan)) {
		case io::EOF =>
			break;
		case let err: io::error =>
			fmt::fatalf("Read error: {}", io::strerror(err));
		case let line: const str =>
			yield line;
		};
		fmt::printfln("{}: {}", lineno, line)!;
		lineno += 1;
	};
};
