const (
	pi          = 3.14159
	max_retries = 5
	app_name    = 'codearchaeology'
)

fn area_of_circle(radius f64) f64 {
	return pi * radius * radius
}

fn main() {
	println('app: ${app_name}')
	println('max_retries: ${max_retries}')
	println('area(2.0) = ${area_of_circle(2.0)}')
}
