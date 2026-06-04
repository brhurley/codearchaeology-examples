public class LoopControl {
    public static void main(String[] args) {
        System.out.print("Odd numbers under 10:");
        for (int n = 1; n < 20; n++) {
            if (n >= 10) {
                break;       // stop the loop entirely once we hit 10
            }
            if (n % 2 == 0) {
                continue;    // skip even numbers
            }
            System.out.print(" " + n);
        }
        System.out.println();
    }
}
