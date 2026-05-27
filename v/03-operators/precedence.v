fn main() {
	// Multiplication happens before addition
	result1 := 2 + 3 * 4
	println('2 + 3 * 4    = ${result1}')

	// Parentheses force the addition first
	result2 := (2 + 3) * 4
	println('(2 + 3) * 4  = ${result2}')

	// && binds tighter than ||, so b && c is evaluated first
	a := true
	b := false
	c := true
	result3 := a || b && c
	println('a || b && c  = ${result3}')

	// Comparisons evaluate before the logical &&
	n := 7
	in_range := n > 0 && n < 10
	println('0 < n < 10   = ${in_range}')
}
