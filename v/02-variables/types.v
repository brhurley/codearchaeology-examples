fn main() {
	// Inferred types
	count := 42          // int
	ratio := 3.14        // f64
	label := 'vlang'     // string
	ready := true        // bool

	// Explicit type annotation
	big_number := i64(9_000_000_000)
	small_byte := u8(255)
	precise := f32(2.5)

	// V can print the type of any value at compile time
	println('count is ${typeof(count).name}')
	println('ratio is ${typeof(ratio).name}')
	println('label is ${typeof(label).name}')
	println('ready is ${typeof(ready).name}')
	println('big_number is ${typeof(big_number).name}')
	println('small_byte is ${typeof(small_byte).name}')
	println('precise is ${typeof(precise).name}')
}
