package main

import "fmt"

func main() {
	// 1. Classic three-component loop: init; condition; post
	for i := 1; i <= 5; i++ {
		fmt.Printf("Count: %d\n", i)
	}

	// 2. Condition-only form (Go's equivalent of a while loop)
	n := 10
	for n > 1 {
		n = n / 2
		fmt.Printf("n is now %d\n", n)
	}

	// 3. Infinite loop with a break to exit
	total := 0
	for {
		total += 10
		if total >= 30 {
			break
		}
	}
	fmt.Printf("Total reached %d\n", total)
}
