// Local variables live only inside the method that declares them
def scale(value) {
    def factor = 3        // 'factor' exists only inside scale()
    return value * factor
}

println scale(5)

// Closures capture variables from their enclosing scope
def makeCounter() {
    def count = 0
    return { -> count += 1 }   // the returned closure remembers 'count'
}

def counter = makeCounter()
println counter()
println counter()
println counter()
