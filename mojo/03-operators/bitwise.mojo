def main():
    var a: Int = 12   # 0b1100
    var b: Int = 10   # 0b1010

    print("a & b =", a & b)    # AND  -> 0b1000 = 8
    print("a | b =", a | b)    # OR   -> 0b1110 = 14
    print("a ^ b =", a ^ b)    # XOR  -> 0b0110 = 6
    print("~a =", ~a)          # NOT  -> -13 (two's complement)
    print("a << 2 =", a << 2)  # left shift  -> 48
    print("a >> 1 =", a >> 1)  # right shift -> 6
