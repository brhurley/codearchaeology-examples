package main

import "fmt"

func main() {
	// range over a slice yields the index and the value
	fruits := []string{"apple", "banana", "cherry"}
	for index, fruit := range fruits {
		fmt.Printf("%d: %s\n", index, fruit)
	}

	// range over a map yields the key and the value
	ages := map[string]int{"Alice": 30}
	for name, age := range ages {
		fmt.Printf("%s is %d\n", name, age)
	}

	// continue skips to the next iteration
	for i := 1; i <= 6; i++ {
		if i%2 != 0 {
			continue // skip odd numbers
		}
		fmt.Printf("Even: %d\n", i)
	}

	// A label lets break exit an outer loop, not just the inner one
outer:
	for i := 1; i <= 3; i++ {
		for j := 1; j <= 3; j++ {
			if i*j > 4 {
				fmt.Printf("Stopping at %d x %d\n", i, j)
				break outer
			}
		}
	}
}
