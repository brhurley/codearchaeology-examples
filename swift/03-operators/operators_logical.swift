let temperature = 22
let isRaining = false

// Comparison operators each produce a Bool
print("Above 18?  \(temperature > 18)")
print("Equal 22?  \(temperature == 22)")
print("Not 30?    \(temperature != 30)")

// Logical AND, OR, and NOT
let niceWeather = temperature > 18 && !isRaining
print("Nice weather: \(niceWeather)")

let stayInside = isRaining || temperature < 10
print("Stay inside:  \(stayInside)")
