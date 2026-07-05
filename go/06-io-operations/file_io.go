package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	// Create (or truncate) a file for writing
	file, err := os.Create("notes.txt")
	if err != nil {
		fmt.Println("Error creating file:", err)
		return
	}

	// Buffer writes for efficiency, then flush before closing
	writer := bufio.NewWriter(file)
	lines := []string{"First line", "Second line", "Third line"}
	for _, line := range lines {
		fmt.Fprintln(writer, line)
	}
	writer.Flush()
	file.Close()
	fmt.Println("Wrote 3 lines to notes.txt")

	// Read the entire file into memory at once
	data, err := os.ReadFile("notes.txt")
	if err != nil {
		fmt.Println("Error reading file:", err)
		return
	}
	fmt.Print(string(data))

	// Reopen and read line by line
	f, err := os.Open("notes.txt")
	if err != nil {
		fmt.Println("Error opening file:", err)
		return
	}
	defer f.Close()

	fmt.Println("Reading line by line:")
	scanner := bufio.NewScanner(f)
	lineNum := 1
	for scanner.Scan() {
		fmt.Printf("%d: %s\n", lineNum, scanner.Text())
		lineNum++
	}
}
