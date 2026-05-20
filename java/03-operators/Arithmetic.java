public class Arithmetic {
    public static void main(String[] args) {
        int a = 17;
        int b = 5;

        System.out.println("a + b = " + (a + b));
        System.out.println("a - b = " + (a - b));
        System.out.println("a * b = " + (a * b));
        System.out.println("a / b = " + (a / b));
        System.out.println("a % b = " + (a % b));

        // Floating-point division gives a fractional result
        double x = 17.0;
        double y = 5.0;
        System.out.println("x / y = " + (x / y));

        // Increment and decrement
        int counter = 10;
        System.out.println("counter++ = " + (counter++));
        System.out.println("after: counter = " + counter);
        System.out.println("++counter = " + (++counter));
    }
}
