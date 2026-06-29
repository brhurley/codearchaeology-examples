// Takes a function as a parameter
fn apply(f fn (int) int, value int) int {
	return f(value)
}

// Returns a function (a closure capturing `factor`)
fn make_multiplier(factor int) fn (int) int {
	return fn [factor] (x int) int {
		return x * factor
	}
}

fn main() {
	// Anonymous function stored in a variable
	square := fn (x int) int {
		return x * x
	}
	println('square(6) = ${apply(square, 6)}')

	// Anonymous function passed inline
	cube := apply(fn (x int) int {
		return x * x * x
	}, 4)
	println('cube of 4 = ${cube}')

	// A closure: `triple` remembers factor = 3
	triple := make_multiplier(3)
	println('triple(7) = ${triple(7)}')

	// `map` is a built-in higher-order method; `it` is each element
	nums := [1, 2, 3, 4, 5]
	doubled := nums.map(it * 2)
	println('doubled = ${doubled}')
}
