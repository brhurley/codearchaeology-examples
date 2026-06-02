// A discriminated union models a closed set of shapes
type Shape =
    | Circle of radius: float
    | Rectangle of width: float * height: float
    | Square of side: float

let area shape =
    match shape with
    | Circle r -> System.Math.PI * r * r
    | Rectangle (w, h) -> w * h
    | Square s -> s * s

printfn "Circle area:    %.2f" (area (Circle 2.0))
printfn "Rectangle area: %.2f" (area (Rectangle (3.0, 4.0)))
printfn "Square area:    %.2f" (area (Square 5.0))

// The Option type replaces null - match on Some / None
let safeDivide x y =
    match y with
    | 0 -> None
    | _ -> Some (x / y)

match safeDivide 10 2 with
| Some result -> printfn "10 / 2 = %d" result
| None -> printfn "Cannot divide by zero"

match safeDivide 10 0 with
| Some result -> printfn "10 / 0 = %d" result
| None -> printfn "Cannot divide by zero"
