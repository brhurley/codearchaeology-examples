package main

import "fmt"

func main() {
	temperature := 72

	// Basic if / else if / else chain
	if temperature > 80 {
		fmt.Println("It's hot outside")
	} else if temperature > 60 {
		fmt.Println("The weather is pleasant")
	} else {
		fmt.Println("Bring a jacket")
	}

	// if with an initialization statement.
	// score only exists inside this if/else block.
	if score := 85; score >= 90 {
		fmt.Println("Grade: A")
	} else if score >= 80 {
		fmt.Printf("Grade: B (score %d)\n", score)
	} else {
		fmt.Println("Grade: C or below")
	}
}
