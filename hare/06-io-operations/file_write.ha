use fmt;
use io;
use os;
use strings;

export fn main() void = {
	// 0o644 is the Unix permission mode (rw-r--r--)
	const file = os::create("output.txt", 0o644)!;
	defer io::close(file)!;

	// fprintln and fprintfln write formatted text to the handle
	fmt::fprintln(file, "Line 1: written with fprintln")!;
	fmt::fprintfln(file, "Line 2: {} times {} is {}", 6, 7, 6 * 7)!;

	// io::writeall writes raw bytes; strings::toutf8 exposes a string's bytes
	const bytes = strings::toutf8("Line 3: written with writeall\n");
	const n = io::writeall(file, bytes)!;

	fmt::printfln("Wrote output.txt ({} bytes on the final write)", n)!;
};
