fn main() {
	x := 7         // int
	y := 2.0       // f64

	// Convert before mixing types
	average := f64(x) / y
	rounded := int(average)

	// String <-> number conversions use the strconv module via methods
	port_str := '8080'
	port := port_str.int()

	number := 255
	hex := number.hex()

	println('average = ${average}')
	println('rounded = ${rounded}')
	println('port = ${port}')
	println('hex of ${number} = ${hex}')
}
