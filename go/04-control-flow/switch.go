package main

import "fmt"

func main() {
	day := "Saturday"

	// Expression switch: no break needed, cases don't fall through.
	// A single case can list several values.
	switch day {
	case "Saturday", "Sunday":
		fmt.Println("It's the weekend!")
	case "Friday":
		fmt.Println("Almost the weekend")
	default:
		fmt.Println("A regular workday")
	}

	// Switch with no condition acts like an if/else chain.
	hour := 14
	switch {
	case hour < 12:
		fmt.Println("Good morning")
	case hour < 18:
		fmt.Println("Good afternoon")
	default:
		fmt.Println("Good evening")
	}

	// fallthrough explicitly forces execution into the next case.
	switch n := 1; n {
	case 1:
		fmt.Println("One")
		fallthrough
	case 2:
		fmt.Println("Two")
	case 3:
		fmt.Println("Three")
	}
}
