fn main() {
	// print does not add a newline; println does
	print('Loading')
	print('...')
	println(' done')

	// Format specifiers inside ${} interpolation
	pi := 3.14159265
	count := 42
	println('pi to two decimals: ${pi:.2f}')
	println('count in a 5-wide field: [${count:5}]')

	// eprintln writes to standard error, not standard output
	eprintln('warning: this line goes to stderr')
}
