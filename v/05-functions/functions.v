// A function with two parameters and a return value
fn add(a int, b int) int {
	return a + b
}

fn multiply(a int, b int) int {
	return a * b
}

// A function with no return value (a "procedure")
fn greet(name string) {
	println('Hello, ${name}!')
}

// Multiple return values
fn min_max(numbers []int) (int, int) {
	mut min := numbers[0]
	mut max := numbers[0]
	for n in numbers {
		if n < min {
			min = n
		}
		if n > max {
			max = n
		}
	}
	return min, max
}

fn main() {
	sum := add(3, 4)
	product := multiply(3, 4)
	println('Sum: ${sum}')
	println('Product: ${product}')

	greet('V')

	low, high := min_max([5, 2, 9, 1, 7])
	println('Min: ${low}, Max: ${high}')
}
