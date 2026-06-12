fn main() {
	temperature := 72

	// Basic if / else if / else chain (no parentheses around the condition)
	if temperature > 80 {
		println('It is hot outside')
	} else if temperature > 60 {
		println('The weather is pleasant')
	} else {
		println('Bring a jacket')
	}

	// if is an expression: each branch yields a value
	score := 85
	grade := if score >= 90 {
		'A'
	} else if score >= 80 {
		'B'
	} else {
		'C or below'
	}
	println('Grade: ${grade}')
}
