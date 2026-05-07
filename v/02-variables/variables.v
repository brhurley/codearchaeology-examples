fn main() {
	// Immutable bindings (the default)
	name := 'Ada'
	age := 36
	height := 1.70

	// Mutable binding -- 'mut' is required for reassignment
	mut score := 0
	score = score + 10
	score += 5

	println('name = ${name}')
	println('age = ${age}')
	println('height = ${height}')
	println('score = ${score}')
}
