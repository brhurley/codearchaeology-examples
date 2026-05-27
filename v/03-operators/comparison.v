fn main() {
	x := 10
	y := 20

	println('x == y : ${x == y}')
	println('x != y : ${x != y}')
	println('x <  y : ${x < y}')
	println('x >  y : ${x > y}')
	println('x <= y : ${x <= y}')
	println('x >= y : ${x >= y}')

	// Logical operators combine boolean expressions
	age := 25
	is_adult := age >= 18 && age < 65
	println('is_adult  : ${is_adult}')

	has_ticket := false
	can_enter := is_adult && has_ticket
	println('can_enter : ${can_enter}')

	// ! negates a boolean
	is_free := !has_ticket
	println('is_free   : ${is_free}')
}
