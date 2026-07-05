package main

import "fmt"

func main() {
	name := "Ada"
	age := 37
	pi := 3.14159

	// Println adds spaces between operands and a trailing newline
	fmt.Println("Hello,", name)

	// Print adds no newline and no spaces between string operands
	fmt.Print("Age: ")
	fmt.Print(age)
	fmt.Print("\n")

	// Printf uses format verbs for precise control
	fmt.Printf("%s is %d years old\n", name, age)
	fmt.Printf("Pi rounded: %.2f\n", pi)
	fmt.Printf("Hex: %x, Binary: %b\n", 255, 5)

	// Sprintf returns a formatted string instead of printing it
	greeting := fmt.Sprintf("Welcome, %s!", name)
	fmt.Println(greeting)
}
