fn main() {
	day := 'Saturday'

	// match used as an expression; a branch can list several values
	kind := match day {
		'Saturday', 'Sunday' { 'weekend' }
		'Friday' { 'almost the weekend' }
		else { 'a workday' }
	}
	println('${day} is ${kind}')

	// match on inclusive integer ranges (0...11 means 0 through 11)
	hour := 14
	greeting := match hour {
		0...11 { 'Good morning' }
		12...17 { 'Good afternoon' }
		else { 'Good evening' }
	}
	println(greeting)

	// match used as a statement, running a block of code per branch
	n := 2
	match n {
		1 { println('One') }
		2 { println('Two') }
		else { println('Many') }
	}
}
