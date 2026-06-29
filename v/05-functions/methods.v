struct Rectangle {
	width  int
	height int
}

// Read-only receiver `r`
fn (r Rectangle) area() int {
	return r.width * r.height
}

fn (r Rectangle) perimeter() int {
	return 2 * (r.width + r.height)
}

struct Counter {
mut:
	count int
}

// Mutable receiver: this method changes the Counter
fn (mut c Counter) increment() {
	c.count++
}

fn main() {
	rect := Rectangle{
		width:  4
		height: 3
	}
	println('Area: ${rect.area()}')
	println('Perimeter: ${rect.perimeter()}')

	mut counter := Counter{}
	counter.increment()
	counter.increment()
	counter.increment()
	println('Count: ${counter.count}')
}
