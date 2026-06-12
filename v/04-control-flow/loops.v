fn main() {
	// 1. Classic three-component loop: init; condition; increment
	for i := 1; i <= 5; i++ {
		println('Count: ${i}')
	}

	// 2. Condition-only form (V's equivalent of a while loop)
	mut n := 10
	for n > 1 {
		n = n / 2
		println('n is now ${n}')
	}

	// 3. Bare infinite loop, exited with break
	mut total := 0
	for {
		total += 10
		if total >= 30 {
			break
		}
	}
	println('Total reached ${total}')
}
