fn lookup(id int) ?string {
	if id == 1 {
		return 'Alice'
	}
	if id == 2 {
		return 'Bob'
	}
	return none
}

fn main() {
	// Use 'or' to provide a default for the missing case
	name1 := lookup(1) or { 'unknown' }
	name2 := lookup(99) or { 'unknown' }

	println('id 1 -> ${name1}')
	println('id 99 -> ${name2}')
}
