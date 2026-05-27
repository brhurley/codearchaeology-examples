fn main() {
	a := 17
	b := 5

	println('a + b  = ${a + b}') // addition
	println('a - b  = ${a - b}') // subtraction
	println('a * b  = ${a * b}') // multiplication
	println('a / b  = ${a / b}') // integer division (truncates)
	println('a % b  = ${a % b}') // modulo (remainder)

	// Float division requires float operands
	p := 9.0
	q := 4.0
	println('p / q  = ${p / q}') // floating-point division
}
