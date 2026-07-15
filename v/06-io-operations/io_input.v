import os

fn main() {
	name := os.input('What is your name? ')
	println('Hello, ${name}!')

	// os.input always returns a string; convert explicitly
	age_text := os.input('How old are you? ')
	age := age_text.int()
	println('Next year you will be ${age + 1}.')
}
