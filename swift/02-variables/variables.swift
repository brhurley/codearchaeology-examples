// Constants are declared with 'let' — value cannot change
let language = "Swift"
let version: Double = 6.0
let isOpenSource: Bool = true

// Variables are declared with 'var' — value can be reassigned
var year: Int = 2014
var downloads = 1_000_000  // underscores improve readability in numbers

print("Language: \(language)")
print("Version: \(version)")
print("Open source: \(isOpenSource)")
print("First released: \(year)")
print("Downloads: \(downloads)")

// Reassigning a var is fine
year = 2024
downloads += 500_000
print("Current year: \(year)")
print("Total downloads: \(downloads)")

// Type annotations are optional when the type can be inferred
let radius = 5.0        // inferred as Double
let diameter = radius * 2
print("Diameter: \(diameter)")
