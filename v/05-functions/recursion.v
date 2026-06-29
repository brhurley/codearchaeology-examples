// Factorial: n! = n * (n-1) * ... * 1
fn factorial(n int) int {
	if n <= 1 {
		return 1
	}
	return n * factorial(n - 1)
}

// Fibonacci: each number is the sum of the two before it
fn fib(n int) int {
	if n < 2 {
		return n
	}
	return fib(n - 1) + fib(n - 2)
}

fn main() {
	println('5! = ${factorial(5)}')
	println('10! = ${factorial(10)}')

	mut series := []int{}
	for i in 0 .. 10 {
		series << fib(i)
	}
	println('Fibonacci: ${series}')
}
