def main():
    var x: Int = 10
    var y: Int = 20

    print("x == y:", x == y)
    print("x != y:", x != y)
    print("x < y:", x < y)
    print("x <= 10:", x <= 10)
    print("x > y:", x > y)
    print("x >= 10:", x >= 10)

    var in_range: Bool = x > 0 and x < 100
    var is_edge: Bool = x == 0 or y == 20
    print("0 < x < 100:", in_range)
    print("x == 0 or y == 20:", is_edge)
    print("not in_range:", not in_range)
