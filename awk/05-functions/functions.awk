# User-defined functions in AWK
function greet(name) {
    return "Hello, " name "!"
}

function max(a, b) {
    return (a > b) ? a : b
}

function rectangle_area(width, height) {
    return width * height
}

BEGIN {
    print greet("AWK")
    print "Max of 7 and 12:", max(7, 12)
    print "Area of 4 x 5:", rectangle_area(4, 5)
}
