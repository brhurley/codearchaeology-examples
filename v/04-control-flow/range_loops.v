fn main() {
	// Iterate over a half-open range: 0 .. 5 yields 0, 1, 2, 3, 4
	for i in 0 .. 5 {
		print('${i} ')
	}
	println('')

	// Iterate over an array, capturing both index and value
	fruits := ['apple', 'banana', 'cherry']
	for index, fruit in fruits {
		println('${index}: ${fruit}')
	}

	// continue skips to the next iteration
	for i in 1 .. 7 {
		if i % 2 != 0 {
			continue // skip odd numbers
		}
		println('Even: ${i}')
	}

	// A label lets break exit an outer loop, not just the inner one
	outer: for i in 1 .. 4 {
		for j in 1 .. 4 {
			if i * j > 4 {
				println('Stopping at ${i} x ${j}')
				break outer
			}
		}
	}
}
