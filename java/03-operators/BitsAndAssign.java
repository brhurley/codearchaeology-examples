public class BitsAndAssign {
    public static void main(String[] args) {
        int flags = 0b1010;       // binary literal: decimal 10
        int mask  = 0b0110;       // decimal 6

        System.out.println("flags & mask = " + (flags & mask));  // AND
        System.out.println("flags | mask = " + (flags | mask));  // OR
        System.out.println("flags ^ mask = " + (flags ^ mask));  // XOR
        System.out.println("~flags       = " + (~flags));        // NOT
        System.out.println("flags << 2   = " + (flags << 2));    // left shift
        System.out.println("flags >> 1   = " + (flags >> 1));    // signed right shift

        // Unsigned right shift fills with zeros regardless of sign
        int negative = -8;
        System.out.println("-8 >>> 1     = " + (negative >>> 1));

        // Compound assignment
        int total = 100;
        total += 25;   // total = 125
        total -= 5;    // total = 120
        total *= 2;    // total = 240
        total /= 4;    // total = 60
        total %= 7;    // total = 4
        System.out.println("total = " + total);
    }
}
