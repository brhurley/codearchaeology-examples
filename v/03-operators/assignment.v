fn main() {
	mut total := 100

	total += 10 // total = total + 10
	println('after += : ${total}')

	total -= 20
	println('after -= : ${total}')

	total *= 2
	println('after *= : ${total}')

	total /= 3 // integer division
	println('after /= : ${total}')

	total %= 7
	println('after %= : ${total}')

	// The + operator concatenates strings; += appends
	mut message := 'V'
	message += 'lang'
	message += ' rocks'
	println('message  : ${message}')
}
