package main

import "fmt"

// Rectangle is a simple struct with a width and a height.
type Rectangle struct {
    Width  float64
    Height float64
}

// Area is a method with a value receiver; it reads but does not modify.
func (r Rectangle) Area() float64 {
    return r.Width * r.Height
}

// Scale is a method with a pointer receiver; it modifies the struct.
func (r *Rectangle) Scale(factor float64) {
    r.Width *= factor
    r.Height *= factor
}

func main() {
    rect := Rectangle{Width: 3, Height: 4}
    fmt.Printf("Area: %.1f\n", rect.Area())

    rect.Scale(2)
    fmt.Printf("After scaling: %.1f x %.1f\n", rect.Width, rect.Height)
    fmt.Printf("New area: %.1f\n", rect.Area())
}
